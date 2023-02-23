Vim�UnDo� f-�Ҡ����1���ÛXg ��,&��3n�  �       beforeEach(async () => {   U                          c��    _�                     U       ����                                                                                                                                                                                                                                                                                                                                                             c��     �   T   V  �          beforeEach(async () => {5��    T   
                 X                    �    T                 	   R             	       5�_�                     U       ����                                                                                                                                                                                                                                                                                                                                                             c��    �     �  �  q   )import { AuthConfig } from "@src/config";       const authMock = {       token_type: 'Bearer',       expires_in: 100000,   "    expires_at: Date.now() + 1000,       ext_expires_in: 3599,       access_token: 'abcdef1234',   };       const channelMock = {       '@odata.context':   t        "https://graph.microsoft.com/v1.0/$metadata#teams('c86b7a8d-325c-4212-8e5c-86990cb9cdee')/channels/$entity",   ;    id: '19:9e9e548740a94c5c847734fc8ff75de3@thread.tacv2',   %    displayName: 'modal created two',       description: null,       isFavoriteByDefault: null,       email: '',       webUrl:   �        'https://teams.microsoft.com/l/channel/19%3a9e9e548740a94c5c847734fc8ff75de3%40thread.tacv2/modal+created+two?groupId=c86b7a8d-325c-4212-8e5c-86990cb9cdee&tenantId=9a96b5a7-f146-4358-99cf-7bf5dc78cec3',       membershipType: 'standard',   };       const channelsMock = {       '@odata.context':   l        "https://graph.microsoft.com/v1.0/$metadata#teams('c86b7a8d-325c-4212-8e5c-86990cb9cdee')/channels",       '@odata.count': 3,       value: [   6        { ...channelMock, id: '1', displayName: '1' },   6        { ...channelMock, id: '2', displayName: '2' },   6        { ...channelMock, id: '2', displayName: '2' },       ],   };       const delegatedUser = {       scopes: 'user.read email',       email: 'testing@go1.com',       aadId: mockUserId,       tid: mockTenantId,   };       7const notConsentedJwt = generateJwt({ delegatedUser });   "const consentedJwt = generateJwt({       delegatedUser,       tenant: {   �        scopes: [SCOPE_TYPE.GROUP_READWRITE_ALL, SCOPE_TYPE.GROUP_READ_ALL, SCOPE_TYPE.FILES_READWRITE, SCOPE_TYPE.FILES_READWRITE_ALL],       },   });   'const ownerConsentedJwt = generateJwt({       delegatedUser,   !    ownedTeams: [mockUserTeamId],       learningPageOwner: true,   T    tenant: { scopes: [SCOPE_TYPE.GROUP_READWRITE_ALL, SCOPE_TYPE.GROUP_READ_ALL] },   });       *describe('/edu/api/team/ channel', () => {       let app: INestApplication;           let mockApi: MockAdapter;   -    let botStorageService: BotStorageService;   1    let learningItemSerivce: LearningItemService;   +    let mockStateBuilder: MockStateBuilder;   *    const msCredentials: MsCredentials = {   ,        client_id: AuthConfig.AUTH_MSAPP_ID,   4        client_secret: AuthConfig.AUTH_MSAPP_SECRET,           tenant: mockTenantId,       };           beforeAll(async () => {   ]        process.env.EDUBOT_MONGODB_CONNECTION_STRING = await (global as any).mongod.getUri();   a        const module: TestingModule = await Test.createTestingModule(moduleMetadata()).compile();   -        app = module.createNestApplication();       +        mockApi = new MockAdapter(baseApi);           mockApi               .onPost(   V                `https://login.microsoftonline.com/${mockTenantId}/oauth2/v2.0/token`,   w                `grant_type=client_credentials&client_id=${msCredentials.client_id}&client_secret=${encodeURIComponent(   /                    msCredentials.client_secret   >                )}&scope=https://graph.microsoft.com/.default`               )   "            .reply(200, authMock);               await app.init();   L        botStorageService = await app.get<BotStorageService>('IBotStorage');   V        learningItemSerivce = await app.get<LearningItemService>(LearningItemService);   C        mockStateBuilder = new MockStateBuilder(botStorageService);       });       .    describe('/GET /:teamId/channels', () => {   '        test('403 missing jwt', () => {   /            return request(app.getHttpServer())   @                .get(`/edu/api/team/${mockUserTeamId}/channels`)                   .expect(403)   6                .expect({ message: ERR_MISSING_JWT });           });       *        test('403 missing scopes', () => {   /            return request(app.getHttpServer())   @                .get(`/edu/api/team/${mockUserTeamId}/channels`)   B                .set('Authorization', `Bearer ${notConsentedJwt}`)                   .expect(403)   x                .expect({ message: 'Access denied: Group.ReadWrite.All, Group.Read.All, Group.Selected not granted.' });           });               test('200', () => {   x            mockApi.onGet(`https://graph.microsoft.com/v1.0/teams/${mockUserTeamId}/channels`).reply(200, channelsMock);       /            return request(app.getHttpServer())   @                .get(`/edu/api/team/${mockUserTeamId}/channels`)   ?                .set('Authorization', `Bearer ${consentedJwt}`)                   .expect(200)   &                .expect(channelsMock);           });       });       /    describe('/POST /:teamId/channels', () => {   '        test('403 missing jwt', () => {   /            return request(app.getHttpServer())   A                .post(`/edu/api/team/${mockUserTeamId}/channels`)   U                .send({ channels: [{ displayName: 'foo' }, { displayName: 'bar' }] })                   .expect(403)   6                .expect({ message: ERR_MISSING_JWT });           });       *        test('403 missing scopes', () => {   /            return request(app.getHttpServer())   A                .post(`/edu/api/team/${mockUserTeamId}/channels`)   B                .set('Authorization', `Bearer ${notConsentedJwt}`)   U                .send({ channels: [{ displayName: 'foo' }, { displayName: 'bar' }] })                   .expect(403)   x                .expect({ message: 'Access denied: Group.ReadWrite.All, Channel.Create, Group.Selected not granted.' });           });       ?        test('400 invalid request body (bad channels)', () => {   /            return request(app.getHttpServer())   A                .post(`/edu/api/team/${mockUserTeamId}/channels`)   ?                .set('Authorization', `Bearer ${consentedJwt}`)   M                .send({ channels: [{ displayName: 'foo' }, { foo: 'bar' }] })                   .expect(400)   ]                .expect({ message: 'Invalid channel input, missing channel display name.' });           });       >        test('400 invalid request body (no channels)', () => {   /            return request(app.getHttpServer())   A                .post(`/edu/api/team/${mockUserTeamId}/channels`)   ?                .set('Authorization', `Bearer ${consentedJwt}`)                   .send({})                   .expect(400)   I                .expect({ message: 'Missing or invalid request body.' });           });       });       7    describe('/POST team/channel/:pageId/data', () => {   0        test('201 not team owner', async () => {   H            const page = await learningItemSerivce.createChannelMapping(   '                new ChannelMappingDto({   +                    teamId: mockUserTeamId,   -                    channelId: mockChannelId,                   })               );       /            return request(app.getHttpServer())   >                .post(`/edu/api/team/channel/${page.id}/data`)   ?                .set('Authorization', `Bearer ${consentedJwt}`)   ?                .send({ data: { bannerImageUrl: 'some_url' } })                   .expect(201)   '                .expect((res: any) => {   F                    expect(res.body).toEqual(expect.objectContaining({   /                        id: expect.any(String),   }                        teamId: '29:1gd896RJ0y7hiKOKo1cBUQEgRiAf9RgSUslT3G1THShoxp0C_jFc5SyhxFoLKmwrGNJSsQFVV6SJy20Y1V0GHBg',   -                        channelId: 'msteams',   4                        created: expect.any(String),   4                        updated: expect.any(String),   3                        bannerImageUrl: 'some_url',   &                        ownerId: null,   (                        serviceUrl: null                       }))                   });           });       *        test('403 missing scopes', () => {   n            const jwt = generateJwt({ delegatedUser, ownedTeams: [mockUserTeamId], learningPageOwner: true });   /            return request(app.getHttpServer())   A                .post(`/edu/api/team/channel/${mockPageId}/data`)   6                .set('Authorization', `Bearer ${jwt}`)                   .expect(403)   x                .expect({ message: 'Access denied: Group.ReadWrite.All, Channel.Create, Group.Selected not granted.' });           });       -        test('400 channel not found', () => {   /            return request(app.getHttpServer())   E                .post(`/edu/api/team/channel/not-exist-channel/data`)   D                .set('Authorization', `Bearer ${ownerConsentedJwt}`)                   .expect(404)   ;                .expect({ message: 'Channel not found.' });           });       /        test('201 update banner', async () => {   H            const page = await learningItemSerivce.createChannelMapping(   '                new ChannelMappingDto({   +                    teamId: mockUserTeamId,   -                    channelId: mockChannelId,                   })               );       /            return request(app.getHttpServer())   >                .post(`/edu/api/team/channel/${page.id}/data`)   D                .set('Authorization', `Bearer ${ownerConsentedJwt}`)   ?                .send({ data: { bannerImageUrl: 'some_url' } })                   .expect(201)   '                .expect((res: any) => {   H                    expect(res.body.bannerImageUrl).toEqual('some_url');                   });           });       :        test('201 update showPinnedContent', async () => {   H            const page = await learningItemSerivce.createChannelMapping(   '                new ChannelMappingDto({   +                    teamId: mockUserTeamId,   -                    channelId: mockChannelId,                   })               );       /            return request(app.getHttpServer())   >                .post(`/edu/api/team/channel/${page.id}/data`)   D                .set('Authorization', `Bearer ${ownerConsentedJwt}`)   <                .send({ data: { showPinnedContent: true } })                   .expect(201)   '                .expect((res: any) => {   E                    expect(res.body.showPinnedContent).toEqual(true);                   });           });       5        test('201 update section name', async () => {   H            const page = await learningItemSerivce.createChannelMapping(   '                new ChannelMappingDto({   +                    teamId: mockUserTeamId,   -                    channelId: mockChannelId,                   })               );       /            return request(app.getHttpServer())   >                .post(`/edu/api/team/channel/${page.id}/data`)   D                .set('Authorization', `Bearer ${ownerConsentedJwt}`)   D                .send({ data: { sectionName: 'new section name' } })                   .expect(201)   '                .expect((res: any) => {   M                    expect(res.body.sectionName).toEqual('new section name');                   });           });       });       B    describe('/POST team/:teamId/channel/:channelId/file', () => {   *        test('403 missing scopes', () => {   U            const jwt = generateJwt({ delegatedUser, ownedTeams: [mockUserTeamId] });   /            return request(app.getHttpServer())   V                .post(`/edu/api/team/${mockUserTeamId}/channel/${mockChannelId}/file`)   6                .set('Authorization', `Bearer ${jwt}`)                   .expect(403)   i                .expect({ message: 'Access denied: Files.ReadWrite, Files.ReadWrite.All not granted.' });           });       (        test('400 missing file', () => {   /            return request(app.getHttpServer())   V                .post(`/edu/api/team/${mockUserTeamId}/channel/${mockChannelId}/file`)   ?                .set('Authorization', `Bearer ${consentedJwt}`)                   .expect(400)   5                .expect({ message: 'Missing file' });           });       2        test('400 unable to load storage', () => {               return (   ,                request(app.getHttpServer())   [                    .post(`/edu/api/team/${mockUserTeamId}/channel/not-exist-channel/file`)   C                    .set('Authorization', `Bearer ${consentedJwt}`)   ?                    .set('Content-Type', 'multipart/form-data')   :                    // TODO: mock file with buffer instead   E                    // .attach('file', Buffer.from('some_data_here'))   <                    .attach('file', `${__dirname}/test.csv`)                        .expect(400)                       .expect({                            message:   �                            'The storage location could not be loaded. Please try again after accessing the Files tab in your selected channel to ensure the location exists.',                       })               );           });       1        test('400 unable to upload file', () => {   0            const mockDriveId = 'drive_mock_id';               mockApi   x                .onGet(`https://graph.microsoft.com/v1.0/teams/${mockUserTeamId}/channels/${mockChannelId}/filesFolder`)                   .reply(200, {                       data: {   (                        id: mockDriveId,                       },                   });               mockApi                   .onPost(   }                    `https://graph.microsoft.com/v1.0/groups/${mockUserTeamId}/drive/items/${mockDriveId}:/file.txt:/content`                   )                   .reply(400);                   return (   ,                request(app.getHttpServer())   Z                    .post(`/edu/api/team/${mockUserTeamId}/channel/${mockChannelId}/file`)   C                    .set('Authorization', `Bearer ${consentedJwt}`)   ?                    .set('Content-Type', 'multipart/form-data')   :                    // TODO: mock file with buffer instead   E                    // .attach('file', Buffer.from('some_data_here'))   <                    .attach('file', `${__dirname}/test.csv`)                        .expect(400)   9                    .expect({ message: 'Invalid data.' })               );           });       /        test('200 upload file success', () => {   0            const mockDriveId = 'drive_mock_id';               mockApi   x                .onGet(`https://graph.microsoft.com/v1.0/teams/${mockUserTeamId}/channels/${mockChannelId}/filesFolder`)                   .reply(200, {   $                    id: mockDriveId,                   });               mockApi                   .onPut(   }                    `https://graph.microsoft.com/v1.0/groups/${mockUserTeamId}/drive/items/${mockDriveId}:/test.csv:/content`                   )                   .reply(200, {                       data: {                            value: [                               {   /                                eTag: 'string',   '                                file: {   5                                    extension: 'txt',   "                                },                               },                           ],                       },                   });                   return (   ,                request(app.getHttpServer())   Z                    .post(`/edu/api/team/${mockUserTeamId}/channel/${mockChannelId}/file`)   C                    .set('Authorization', `Bearer ${consentedJwt}`)   ?                    .set('Content-Type', 'multipart/form-data')   :                    // TODO: mock file with buffer instead   E                    // .attach('file', Buffer.from('some_data_here'))   <                    .attach('file', `${__dirname}/test.csv`)                        .expect(200)               );           });       });       A    describe('/POST /edu/api/team/:teamId/channels/tabs', () => {   *        test('403 not team owner', () => {   /            return request(app.getHttpServer())   F                .post(`/edu/api/team/${mockUserTeamId}/channels/tabs`)   ?                .set('Authorization', `Bearer ${consentedJwt}`)                   .expect(403)   B                .expect({ message: ERR_NOT_LEARNING_PAGE_OWNER });           });       *        test('403 missing scopes', () => {   n            const jwt = generateJwt({ delegatedUser, ownedTeams: [mockUserTeamId], learningPageOwner: true });   /            return request(app.getHttpServer())   F                .post(`/edu/api/team/${mockUserTeamId}/channels/tabs`)   6                .set('Authorization', `Bearer ${jwt}`)                   .expect(403)   �                .expect({ message: 'Access denied: Group.ReadWrite.All, TeamsTab.ReadWrite.All, Group.Selected not granted.' });5��          p  |   z     �      I<      =      5��