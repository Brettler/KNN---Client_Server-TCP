// Eden Berman 318530474
// Liad Brettler 318517182

#ifndef HEADER_CLIENTCLASS_H
#define HEADER_CLIENTCLASS_H
#include <iostream>
#include <sys/socket.h>
#include <stdio.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <string.h>
#include <algorithm>
#include <sstream>
#include <vector>
#include <string>
#include <thread>
#include <fstream>
#include "InputCheck.h"
#include "DefaultIO.h"



using namespace std;

class ClientClass {
private:
    // Server's IP address and port number.
    const char* BufferIPAddress;
    int ClientPort;
    DefaultIO* Socket;
public:
    // Constructor:
    ClientClass(const char* BufferIPAddress, int ClientPort);
    // Functions:
    int run();
    void SendMessages(DefaultIO* ServerSocket);
    void ReceiveMessages(DefaultIO* ServerSocket,string outputFile);
    void PrintMenu();
    void InterfaceSendFile (string& path);
    //void ClientInteraction(int ServerSocket, string output);
};

#endif //ADVANCEDPROGRAMMINGTASK3_CLIENTCLASS_H