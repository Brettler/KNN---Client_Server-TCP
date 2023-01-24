// Eden Berman 318530474
// Liad Brettler 318517182

#include "SharedData.h"

SharedData::SharedData() {
    k = 5;
    metric = "AUC";
    ResultsVector = new vector<string>;
    ClassifiedData = nullptr;
    UnclassifiedData = nullptr;
}

SharedData::~SharedData() {
    // if (k != nullptr) {
    //      delete k;
    // }
    // if (metric != nullptr) {
    //      delete metric;
    // }
    if (ClassifiedData != nullptr) {
        delete ClassifiedData;
    }
    if (UnclassifiedData != nullptr) {
        delete UnclassifiedData;
    }
}

void SharedData::SetClassifiedPath(string FileClassifiePath) {
    this -> ClassifiedPath = FileClassifiePath; 
}

string SharedData::GetClassifiedPath() {
    return this -> ClassifiedPath;
}

void SharedData::SetUnclassifiedPath(string FileUnclassifiedPath) {
    this -> UnclassifiedPath = FileUnclassifiedPath; 
}

string SharedData::GetUnclassifiedPath() {
    return this -> UnclassifiedPath;
}

int SharedData::GetK() const{ 
   return this -> k;
}

void SharedData::SetK(int& NewK) {
    this -> k = NewK;
}

string SharedData::GetMetric() const{
    return this -> metric;
}

void SharedData::SetMetric(string& NewMetric) {
    this -> metric = NewMetric;
}

vector<string>* SharedData::GetResultsVector() const {
    return this -> ResultsVector;
}

void SharedData::SetResultsVector(string& label){
    this -> ResultsVector -> push_back(label);
}

ofstream* SharedData::GetResultsFile() const {
    return this -> ResultsFile;
}
void SharedData::SetResultsFile(string& NameFile){
   this-> ResultsFile = new ofstream(NameFile);
}




DataImport* SharedData::GetClassifiedData() {
    if (ClassifiedData == nullptr) {
        ClassifiedData = new DataImport(ClassifiedPath); 
    }
    return this -> ClassifiedData;
}

DataImport* SharedData::GetUnclassifiedData() {
    if (UnclassifiedData == nullptr) {
        UnclassifiedData = new DataImport(UnclassifiedPath); 
    }
    return this -> UnclassifiedData;
}