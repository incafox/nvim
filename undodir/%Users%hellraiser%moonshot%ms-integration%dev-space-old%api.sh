Vim�UnDo� �ݝX~��<��u�KDН�ߡa]�gG�0~U,   1   	ENV=local      	      	       	   	   	    c�    _�                            ����                                                                                                                                                                                                                                                                                                                                                v       c�x     �         1      	ENV=local5��                         2                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       c�z     �         1      ENV=5��                         2                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                                v       c�~    �         1      ENV=orid5��                        2                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             cF{    �         1      ENV=qa  5��                        2                     �                        2                     �                        2                     �                        2                     �                        2                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                         
       v   
    c��     �         1      ENV=local  5��                         2                      5�_�                           ����                                                                                                                                                                                                                                                                                                                                         
       v   
    c��    �         1      ENV=5��                         2                      �                        2                     5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                         
       v   
    c��    �         1      ENV=stassing5��                        5                     �                        2                     5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                         
       v   
    c�}     �               1   #!/usr/bin/env bash       . "./base.sh"       	export -a   ENV=stagging   PORT=$API_PORT   API_HOST=$API_HOST   GO1_APP_NAME=$APP_NAME   LEDUBOT_MONGODB_ENDPOINT=mongodb://localhost:27017/cli_edubot_mongo?ssl=false   AUTH_MSAPP_ID=$AUTH_MSAPP_ID   $AUTH_MSAPP_SECRET=$AUTH_MSAPP_SECRET   BOT_MSAPP_ID=$BOT_MSAPP_ID   "BOT_MSAPP_SECRET=$BOT_MSAPP_SECRET   "LEARNING_TAB_URL=$LEARNING_TAB_URL    LEARNING_TAB_ID=$LEARNING_TAB_ID   GO1_CLIENT=$GO1_CLIENT   $GO1_CLIENT_SECRET=$GO1_CLIENT_SECRET   "MAINTENANCE_MODE=$MAINTENANCE_MODE   (MAINTENANCE_MESSAGE=$MAINTENANCE_MESSAGE       :NEXT_PUBLIC_DD_APP_ID=adb4f5d8-2cbc-42c6-b5ef-a8a29a62572d   ?NEXT_PUBLIC_DD_CLIENT_TOKEN=pub499abcdf905c7d25ea2935f6c6a40b4f   +NEXT_PUBLIC_DD_SERVICE_NAME=go1-msteams-app   NEXT_PUBLIC_ENV=local           Mprintf "************************\nRunning api.sh\n************************\n"       if [ -z "$API_PORT" ] ||     [ -z "$API_HOST" ] ||     [ -z "$APP_NAME" ] ||     [ -z "$AUTH_MSAPP_ID" ] ||      [ -z "$AUTH_MSAPP_SECRET" ] ||     [ -z "$BOT_MSAPP_ID" ] ||     [ -z "$BOT_MSAPP_SECRET" ] ||     [ -z "$LEARNING_TAB_URL" ] ||     [ -z "$LEARNING_TAB_ID" ] ||     [ -z "$GO1_CLIENT" ] ||      [ -z "$GO1_CLIENT_SECRET" ] ||     [ -z "$MAINTENANCE_MODE" ] ||     [ -z "$MAINTENANCE_MESSAGE" ]   then   :  echo "You are missing required environment variable(s)!"   /  echo "See instructions located in the README"     echo "api.sh will now exit"   else   #  cd "$__API_PATH__" && npm run dev   fi5�5�_�                  	      	    ����                                                                                                                                                                                                                                                                                                                                                             c�    �         1      	ENV=local5��                        2                     �                        2                     5��