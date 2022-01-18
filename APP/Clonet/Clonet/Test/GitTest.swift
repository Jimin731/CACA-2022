//
//  GiteTest.swift
//  Clonet
//
//  Created by Hye Min Choi on 2022/01/10.
//


import SwiftUI
import SwiftGit2

let documentURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)

struct GitTest: View {

    @State var message = ""

    let localRepoLocation = documentURL.appendingPathComponent("BigMac")
    let remoteRepoLocation = "https://github.com/light-tech/BigMac.git"
    let test = "https://git-codecommit.ap-northeast-2.amazonaws.com/v1/repos/test1"

    init() {
        // git_libgit2_init()
        Repository.initialize_libgit2()
    }

    var body: some View {
        VStack {
            Button("Open test Git repo", action: testGitRepo)
            Button("Clone remote Git repo", action: cloneGitRepo)
            Button("CREATE GIT REPOSITORY", action: createGitRepo)
            ScrollView {
                Text(message)
            }
        }.padding(5)
    }
    
    func createGitRepo(){
        let remote: URL = URL(string: test)!
        let result = Repository.create(at: remote)
        switch result {
        case let .success(repo):
            let latestCommit = repo
                .HEAD()
                .flatMap {
                    repo.commit($0.oid)
                }

            switch latestCommit {
            case let .success(commit):
                message = "Latest Commit: \(commit.message) by \(commit.author.name)"

            case let .failure(error):
                message = "Could not get commit: \(error)"
            }

        case let .failure(error):
            message = "Could not open repository: \(error)"
        }
    }

    func cloneGitRepo() {
        let remote: URL = URL(string: remoteRepoLocation)!

        let result = Repository.clone(from: remote, to: localRepoLocation)
        switch result {
        case let .success(repo):
            let latestCommit = repo
                .HEAD()
                .flatMap {
                    repo.commit($0.oid)
                }

            switch latestCommit {
            case let .success(commit):
                message = "Latest Commit: \(commit.message) by \(commit.author.name)"

            case let .failure(error):
                message = "Could not get commit: \(error)"
            }

        case let .failure(error):
            message = "Could not clone repository: \(error)"
        }
    }

    func testGitRepo() {
        let result = Repository.at(localRepoLocation)
        switch result {
        case let .success(repo):
            let latestCommit = repo
                .HEAD()
                .flatMap {
                    repo.commit($0.oid)
                }

            switch latestCommit {
            case let .success(commit):
                message = "Latest Commit: \(commit.message) by \(commit.author.name)"

            case let .failure(error):
                message = "Could not get commit: \(error)"
            }

        case let .failure(error):
            message = "Could not open repository: \(error)"
        }
    }
}

struct GitTest_Previews : PreviewProvider {
    static var previews: some View {
        GitTest()
    }
}