# Scud: Disposable Chat - Server

Scud (DISPOSABLE CHAT) is an exploding encrypted chat - from the TERMINAL.

Designed for temp servers that are spun up either for internal comms or from a front facing temp server.

FROM NOTHING TO FULL CHAT INFRASTRUCTURE IN 30 SECONDS. EXPLODES 30 MINS AFTER SERVER LAUNCH.

Note: make sure you have openssl (apt install openssl) and sshpass (apt install sshpass) on your systems.

The server will produce an Agent file for those who want to chat off the server using it for uploads/downloads via SSH.

<h2>HOW TO USE: SERVER</h2> <p>

1) Make sure you have openssl and sshpass installed.
2) 'git commit https://github.com/n3onhacks/scud-server.git'
2) Chmod 777 the folder and run ./createAgent.sh
3) Follow prompts to automatically make a link. Send the link (and encryption pw) for people to join.
4) Scud is set to explode 30 Minutes after you get the file. 
5) Note: you can quickly restart the chat by re-running ./createAgent.sh on the server, you do not need to send a new file/pw if you didn't change the SSH USER and PASS.
6) Scud is designed for temp front-facing or internal servers. CONSIDER THE SSH LOGIN compromised until credentials are changed from file.

<h2>Release:</h2> <p>
Version 1.0 - BETA <p>
- This is a POC, unstable version and is not encrypted fully yet. Unencrypted chat files will hit the server until it's wiped out after 30mins from launch. Once we are out of Beta with a stable version it will be full end-to-end encryption.
