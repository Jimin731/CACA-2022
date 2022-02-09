//
//  LoginCheck_ViewModel.swift
//  Clonet
//
//  Created by Jimin on 2022/02/09.
//

import Foundation
import Apollo
import SwiftUI

//struct CircleImage: View{
//    var image :Image
//    var imgHW : CGFloat = 150
//
//    var body: some View{
//        image
//            .resizable()
//            .frame(width: imgHW, height: imgHW)
//            .clipShape(Circle())
//            .overlay(Circle().stroke(Color.white,lineWidth: 3))
//            .shadow(radius: 5)
//    }
//}
//
//struct MyAlert: View {
////    @ObservedObject var userAuth : UserAuth = UserAuth()
//    @ObservedObject var loginCheck_ViewModel = LoginCheck_ViewModel()
//
//    @State private var selectionString: String? = nil
//    @State var showingAlert = true
//    @State var input_repoName = ""
//
//
//    var body: some View {
////        let RepoJSON = "{\"user_id\": \"\(userAuth.user_id)\", \"repo_name\": \"\(userRepo.Repo_name)\", \"Repo_ec2_ip\": \"\(userRepo.Repo_ec2_ip)\", \"directory_path\": \"\(userRepo.directory_path)\"}"
//        VStack {
//            VStack {
//                Text("저장소 이름").font(.headline).padding()
//
//                TextField("내용을 입력해주세요", text: $input_repoName).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
//                Divider()
//                HStack {
//                    Spacer()
////                    Button(action: {
////                        UIApplication.shared.windows[0].rootViewController?.dismiss(animated: true, completion: {})
////
////                        service.create_Repo(json: RepoJSON)
////
////                    }) {
////
////                        Text("완료")
////                    }
//                    ZStack {
//                        //                                        NavigationLink(destination: LoginCheck_View(userAuth: userAuth), tag: "RepoButton", selection: $selectionString) { }
//                        //                                        .buttonStyle(PlainButtonStyle()).frame(width:0).opacity(0)
//                        Button("완료") {
//                            UIApplication.shared.windows[0].rootViewController?.dismiss(animated: true, completion: {})
//                            self.selectionString = "RepoButton"
//                            loginCheck_ViewModel.repoName = input_repoName
////                            service.create_Repo(json: RepoJSON)
//                        }
//                    }
//
//                    Spacer()
//
//                    Divider()
//
//                    Spacer()
//                    Button(action: {
//                        UIApplication.shared.windows[0].rootViewController?.dismiss(animated: true, completion: {})
//                    }) {
//                        Text("취소")
//                    }
//                    Spacer()
//                }.padding(0)
//
//            }.background(Color(white: 0.9))
//        }
//    }
//}


final class LoginCheck_ViewModel: ObservableObject {
    @Published var launches: RepoNameList = RepoNameList.init()
    @Published var Repo_List: [RepoNameList] = []
    
    init(){
        fetch()
    }
    
    func fetch(){
        Network.shared.apollo.fetch(query: RepoListQuery(user_id: "user1")){ result in
            switch result {
            case .success(let graphQLResult):
                if let log_repos = graphQLResult.data?.repoList {
                    for i in log_repos.indices{
                        self.launches = self.process(data: graphQLResult.data?.repoList![i] ?? RepoListData.init(userId: "" , repoName:""))
                        self.Repo_List.append(self.launches)
                        print("\(self.Repo_List)")
                    }
                } else if let errors = graphQLResult.errors {
                    print("GraphQL errors \(errors)")
                }
                
            case .failure(let error):
                print("Failure! Error: \(error)")
            }
        }
    }
    
    func process(data: RepoListData) -> RepoNameList {
        print("\(RepoNameList(data))")
        return RepoNameList(data)
    }
////    @ObservedObject var login_ViewModel = Login_ViewModel()
////    @Published var repoName = "ddd"
////    @Published var user_id = "user1"
//
//    init(){
//        fetch(user_id: user_id)
//    }
//
//    func loginCheck_alert(user_id: String){
//        let alertHC = UIHostingController(rootView: MyAlert())//userAuth:userAuth))
//
//        alertHC.preferredContentSize = CGSize(width: 300, height: 200)
//        alertHC.modalPresentationStyle = UIModalPresentationStyle.formSheet
//
//        UIApplication.shared.windows[0].rootViewController?.present(alertHC, animated: true)
//    }
//
////    func fetch(user_id: String) {
////        Network.shared.apollo.fetch(query: RepoListQuery(user_id: user_id)) { result in // Change the query name to your query name
////            switch result {
////            case .success(let graphQLResult):
////                print("Success! Result: \(graphQLResult)")
////                print("Success! Result2 graphQL: \((graphQLResult.data?.repoList)!)")
////
////                if let repoNameList = graphQLResult.data?.repoList {
////                    print("Success! Result: \(repoNameList.indices) \(repoNameList.count)")
////                    for i in repoNameList.indices{
////                        self.process(data: graphQLResult.data?.repoList![i] ?? RepoListData.init(userId: "", repoName: ""))
////                    }
////                }else if let errors = graphQLResult.errors {
////                    print("GraphQL errors \(errors)")
////                }
////
////            case .failure(let error):
////                print("GraphQL Failure! Error: \(error)")
////            }
////        }
////    }
//
//    func create_repo(repoName: String){
////        Network.shared.apollo.
//    }
//
//    func fetch(user_id: String) {
//        Network.shared.apollo.fetch(query: RepoListQuery(user_id: user_id)) { result in // Change the query name to your query name
//            switch result {
//            case .success(let graphQLResult):
//                print("Success! Result2 graphQL: \((graphQLResult.data?.repoList)!)")
//
//                if let repoNameList = graphQLResult.data?.repoList {
//                    print("Success! ResultgraphQL: indices \(repoNameList.indices), count \(repoNameList.count)")
//
//                    for i in repoNameList.indices{
//                        self.launches = self.process(data: graphQLResult.data?.repoList![i] ?? RepoListData.init(repoName: ""))
//                        self.Repo_List.append(self.launches)
//                    }
//                }else if let errors = graphQLResult.errors {
//                    print("GraphQL errors \(errors)")
//                }
//
//            case .failure(let error):
//                print("GraphQL Failure! Error: \(error)")
//            }
//        }
//    }
//
//    func process(data: RepoListData) -> RepoNameList {
//        return RepoNameList(data)
//    }
//
//
//    // MARK: ProfileImage
//    var ProfileImgName: String = "user1"
//    var nickName: String = ""
//    var userID : String = ""
//
//    var UserMainImage: some View{
//        CircleImage(image: Image(ProfileImgName))
//            .offset(y: -130)
//            .padding(.bottom, -130)
//    }
//
//    var UserInfo: some View {
//        VStack(alignment: .center){
//            Text(nickName)
//                .font(.title)
//            Text(login_ViewModel.userAuth.user_id)
//                .font(.body)
//        }
//        .padding()
//
//    }
}
