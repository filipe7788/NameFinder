# NameFinder
### Filipe Cruz - Software Development .
#### Contents
- [Filipe Cruz - Software Development Assignment.](#Filipe-Cruz-Software-Development-Assignment)
  - [Contents](#contents)
  - [General Info](#general-info)
  - [Understanding/Asumptions](#understandingasumptions)
  - [Technologies](#technologies)
#### General Info
***
This project was developed to fulfill an assignment for a mobile developer position at Veriff.
In this project, I was given some tasks, focused on developing an SDK and the main app to consume it.

#### Understanding/Asumptions
***
**Text recognition**
  - When open, the app should open the text recognition SDK:
    - **SDK:**
      - The SDK should allow the user to take a picture of an identification document and through Apple's Vision API separate and return all text found.
    - **Main app:**
      - The Main app is supposed to list the information gathered by the SDK

#### MVVM Architecture
***
For the project architecture, I've used MVVM Architecture.
An example of architecture that I like to work on. In addition, to facilitate dependency injection, I added a centralized initializer that could easily relate the components with protocols.
![Image text](https://miro.medium.com/max/4000/1*pFVk0tVSIkeSYD7RZ2sVaw.png)

Saying that I've organized my components by breaking them into five pieces.
- ****Initializer**** - This component contains all screen instances and returns a ViewController. It is used as an entry point where all code components are initialized and related by an exchange of protocols. This layer defines interfaces that are implemented by outside layers. For example, if the View needs to access any information from the ViewModel, the path between those two ends becomes visible here.
- ****ViewModel**** - This layer contains classes for dealing and processing information. The ViewModel should contain only the business logic of the application, therefore, the ViewModel here serves to process de information gathered by the camera and recognize the text it contains.
- ****View**** - This will contain all the visual components and actions. It should be completely unaware of the business logic and purpose.
- ****ViewController**** - As usual, the ViewController serves only to bind View and ViewModel components, but to use the special camera available by apple it's also using the VNDocumentCameraViewController to capture and display a card shape (as presented at WWDC 2018).
- ****DataSource**** - Model to encapsulate the types that are being passed through the business logic

  
#### Technologies
***
A list of the third party technologies used within the project:
* [SnapshotTesting]("https://github.com/pointfreeco/swift-snapshot-testing.git"): Version 1.9.0 - Mapping.
