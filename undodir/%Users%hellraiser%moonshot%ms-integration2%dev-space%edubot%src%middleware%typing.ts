Vim�UnDo� E���Y.�ە9�F$D� iA��V��OD�wU�      D    public static COMPOSE_REGEX = RegExp(`^composeExtension/`, 'i');                              a�S    _�                             ����                                                                                                                                                                                                                                                                                                                                         	       v   	    a�R    �               D    public static COMPOSE_REGEX = RegExp(`^composeExtension/`, 'i');�                 Dimport { Middleware, TurnContext, ActivityTypes } from "botbuilder";       5export class TypingMiddleware implements Middleware {   B  public static COMPOSE_REGEX = RegExp(`^composeExtension/`, "i");   O  public static IGNORE_ACTIVITIES = [ActivityTypes.MessageReaction.toString()];         public async onTurn(       context: TurnContext,       next: () => Promise<void>     ): Promise<void> {   s    // See https://github.com/microsoft/botbuilder-js/blob/master/libraries/botbuilder-core/src/turnContext.ts#L106   L    // Send a typing indicator without going through a middleware listeners.   2    // HandleExtension meet bug when it use typing   E    if (TypingMiddleware.COMPOSE_REGEX.test(context.activity.name) ||   L      TypingMiddleware.IGNORE_ACTIVITIES.indexOf(context.activity.type) >= 0       ) {         await next();         return;       }       M    const reference = TurnContext.getConversationReference(context.activity);   <    const activity = TurnContext.applyConversationReference(         { type: "typing" },         reference       );   >    await context.adapter.sendActivities(context, [activity]);   O    // This won't work, because context.responded is set to true after calling.   6    // await context.sendActivity({ type: 'typing' });           await next();     }5�_�                           ����                                                                                                                                                                                                                                                                                                                                         	       v   	    a��     �       !           Dimport { Middleware, TurnContext, ActivityTypes } from "botbuilder";       5export class TypingMiddleware implements Middleware {   B  public static COMPOSE_REGEX = RegExp(`^composeExtension/`, "i");   O  public static IGNORE_ACTIVITIES = [ActivityTypes.MessageReaction.toString()];         public async onTurn(       context: TurnContext,       next: () => Promise<void>     ): Promise<void> {   s    // See https://github.com/microsoft/botbuilder-js/blob/master/libraries/botbuilder-core/src/turnContext.ts#L106   L    // Send a typing indicator without going through a middleware listeners.   2    // HandleExtension meet bug when it use typing   E    if (TypingMiddleware.COMPOSE_REGEX.test(context.activity.name) ||   L      TypingMiddleware.IGNORE_ACTIVITIES.indexOf(context.activity.type) >= 0       ) {         await next();         return;       }       M    const reference = TurnContext.getConversationReference(context.activity);   <    const activity = TurnContext.applyConversationReference(         { type: "typing" },         reference       );   >    await context.adapter.sendActivities(context, [activity]);   O    // This won't work, because context.responded is set to true after calling.   6    // await context.sendActivity({ type: 'typing' });           await next();     }   }5�_�                            ����                                                                                                                                                                                                                                                                                                                                         	       v   	    a��    �                  Dimport { Middleware, TurnContext, ActivityTypes } from 'botbuilder';       5export class TypingMiddleware implements Middleware {   D    public static COMPOSE_REGEX = RegExp(`^composeExtension/`, 'i');   Q    public static IGNORE_ACTIVITIES = [ActivityTypes.MessageReaction.toString()];       Y    public async onTurn(context: TurnContext, next: () => Promise<void>): Promise<void> {   w        // See https://github.com/microsoft/botbuilder-js/blob/master/libraries/botbuilder-core/src/turnContext.ts#L106   P        // Send a typing indicator without going through a middleware listeners.   6        // HandleExtension meet bug when it use typing           if (   I            TypingMiddleware.COMPOSE_REGEX.test(context.activity.name) ||   R            TypingMiddleware.IGNORE_ACTIVITIES.indexOf(context.activity.type) >= 0           ) {               await next();               return;   	        }       Q        const reference = TurnContext.getConversationReference(context.activity);   _        const activity = TurnContext.applyConversationReference({ type: 'typing' }, reference);   B        await context.adapter.sendActivities(context, [activity]);   S        // This won't work, because context.responded is set to true after calling.   :        // await context.sendActivity({ type: 'typing' });               await next();       }�               D    public static COMPOSE_REGEX = RegExp('^composeExtension/', 'i');5�_�                           ����                                                                                                                                                                                                                                                                                                                                         	       v   	    a��    �                  Dimport { Middleware, TurnContext, ActivityTypes } from 'botbuilder';       5export class TypingMiddleware implements Middleware {   D    public static COMPOSE_REGEX = RegExp(`^composeExtension/`, 'i');   Q    public static IGNORE_ACTIVITIES = [ActivityTypes.MessageReaction.toString()];       Y    public async onTurn(context: TurnContext, next: () => Promise<void>): Promise<void> {   w        // See https://github.com/microsoft/botbuilder-js/blob/master/libraries/botbuilder-core/src/turnContext.ts#L106   P        // Send a typing indicator without going through a middleware listeners.   6        // HandleExtension meet bug when it use typing           if (   I            TypingMiddleware.COMPOSE_REGEX.test(context.activity.name) ||   R            TypingMiddleware.IGNORE_ACTIVITIES.indexOf(context.activity.type) >= 0           ) {               await next();               return;   	        }       Q        const reference = TurnContext.getConversationReference(context.activity);   _        const activity = TurnContext.applyConversationReference({ type: 'typing' }, reference);   B        await context.adapter.sendActivities(context, [activity]);   S        // This won't work, because context.responded is set to true after calling.   :        // await context.sendActivity({ type: 'typing' });               await next();       }�               D    public static COMPOSE_REGEX = RegExp('^composeExtension/', 'i');5�_�                            ����                                                                                                                                                                                                                                                                                                                                         	       v   	    a��    �                  Dimport { Middleware, TurnContext, ActivityTypes } from 'botbuilder';       5export class TypingMiddleware implements Middleware {   D    public static COMPOSE_REGEX = RegExp(`^composeExtension/`, 'i');   Q    public static IGNORE_ACTIVITIES = [ActivityTypes.MessageReaction.toString()];       Y    public async onTurn(context: TurnContext, next: () => Promise<void>): Promise<void> {   w        // See https://github.com/microsoft/botbuilder-js/blob/master/libraries/botbuilder-core/src/turnContext.ts#L106   P        // Send a typing indicator without going through a middleware listeners.   6        // HandleExtension meet bug when it use typing           if (   I            TypingMiddleware.COMPOSE_REGEX.test(context.activity.name) ||   R            TypingMiddleware.IGNORE_ACTIVITIES.indexOf(context.activity.type) >= 0           ) {               await next();               return;   	        }       Q        const reference = TurnContext.getConversationReference(context.activity);   _        const activity = TurnContext.applyConversationReference({ type: 'typing' }, reference);   B        await context.adapter.sendActivities(context, [activity]);   S        // This won't work, because context.responded is set to true after calling.   :        // await context.sendActivity({ type: 'typing' });               await next();       }�               D    public static COMPOSE_REGEX = RegExp('^composeExtension/', 'i');5�_�                            ����                                                                                                                                                                                                                                                                                                                                         	       v   	    a��     �              5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             a�b     �                d5��