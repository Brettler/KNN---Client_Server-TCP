OBJS	= DistanceCalc.o InputCheck.o DataImport.o KNN.o SharedData.o DefaultIO.o SocketIO.o Command.o CommandUploadCSV.o CommandSettingsKNN.o CommandClassify.o CommandDisplay.o CommandDownload.o CommandExit.o CLI.o Server.o ServerClass.o Client.o ClientClass.o
OUT	= server.out,client.out

OBJS0	= DistanceCalc.o InputCheck.o DataImport.o KNN.o SharedData.o DefaultIO.o SocketIO.o Command.o CommandUploadCSV.o CommandSettingsKNN.o CommandClassify.o CommandDisplay.o CommandDownload.o CommandExit.o CLI.o Server.o ServerClass.o
SOURCE0	= DistanceCalc.cpp InputCheck.cpp DataImport.cpp KNN.cpp SharedData.cpp Server.cpp ServerClass.cpp CLI.cpp Command.cpp CommandUploadCSV.cpp CommandSettingsKNN.cpp CommandClassify.cpp CommandDisplay.cpp CommandDownload.cpp CommandExit.cpp DefaultIO.cpp SocketIO.cpp
HEADER0	= DistanceCalc.h InputCheck.h DataImport.h KNN.h SharedData.h DefaultIO.h Command.h CLI.h Server.h ServerClass.h
OUT0	= server.out

OBJS1	= DistanceCalc.o InputCheck.o DataImport.o  KNN.o SharedData.o DefaultIO.o SocketIO.o Command.o CommandUploadCSV.o CommandSettingsKNN.o CommandClassify.o CommandDisplay.o CommandDownload.o CommandExit.o CLI.o Client.o ClientClass.o
SOURCE1	= DistanceCalc.cpp InputCheck.cpp DataImport.cpp KNN.cpp SharedData.cpp CLI.cpp Command.cpp CommandUploadCSV.cpp CommandSettingsKNN.cpp CommandClassify.cpp CommandDisplay.cpp CommandDownload.cpp CommandExit.cpp SocketIO.cpp Client.cpp ClientClass.cpp
HEADER1	= DistanceCalc.h InputCheck.h DataImport.h KNN.h SharedData.h DefaultIO.h Command.h CLI.h Client.h ClientClass.h
OUT1	= client.out

CC	 = g++
FLAGS	 = -g -c -Wall
LFLAGS	 = -lpthread

all: server.out client.out

server.out: $(OBJS0)
	$(CC) -g $(OBJS0) -o $(OUT0) $(LFLAGS)

client.out: $(OBJS1)
	$(CC) -g $(OBJS1) -o $(OUT1) $(LFLAGS)

DistanceCalc.o: DistanceCalc.cpp
	$(CC) $(FLAGS) DistanceCalc.cpp -std=c++11

InputCheck.o: InputCheck.cpp
	$(CC) $(FLAGS) InputCheck.cpp -std=c++11

DataImport.o: DataImport.cpp
	$(CC) $(FLAGS) DataImport.cpp -std=c++11

KNN.o: KNN.cpp
	$(CC) $(FLAGS) KNN.cpp -std=c++11

SharedData.o: SharedData.cpp
	$(CC) $(FLAGS) SharedData.cpp -std=c++11

DefaultIO.o: DefaultIO.cpp
	$(CC) $(FLAGS) DefaultIO.cpp -std=c++11

SocketIO.o: SocketIO.cpp
	$(CC) $(FLAGS) SocketIO.cpp -std=c++11

Command.o: Command.cpp
	$(CC) $(FLAGS) Command.cpp -std=c++11

CommandUploadCSV.o: CommandUploadCSV.cpp
	$(CC) $(FLAGS) CommandUploadCSV.cpp -std=c++11

CommandSettingsKNN.o: CommandSettingsKNN.cpp
	$(CC) $(FLAGS) CommandSettingsKNN.cpp -std=c++11

CommandClassify.o: CommandClassify.cpp
	$(CC) $(FLAGS) CommandClassify.cpp -std=c++11

CommandDisplay.o: CommandDisplay.cpp
	$(CC) $(FLAGS) CommandDisplay.cpp -std=c++11

CommandDownload.o: CommandDownload.cpp
	$(CC) $(FLAGS) CommandDownload.cpp -std=c++11

CommandExit.o: CommandExit.cpp
	$(CC) $(FLAGS) CommandExit.cpp -std=c++11

CLI.o: CLI.cpp
	$(CC) $(FLAGS) CLI.cpp -std=c++11

Server.o: Server.cpp
	$(CC) $(FLAGS) Server.cpp -std=c++11

ServerClass.o: ServerClass.cpp
	$(CC) $(FLAGS) ServerClass.cpp -std=c++11

Client.o: Client.cpp
	$(CC) $(FLAGS) Client.cpp -std=c++11

ClientClass.o: ClientClass.cpp
	$(CC) $(FLAGS) ClientClass.cpp -std=c++11

clean:
	rm -f $(OBJS) $(OUT)