//
//  ContentView.swift
//  CafeApp_SwiftUI
//
//  Created by 이선호 on 2022/06/21.
//

import SwiftUI


//Cocoa Pod 이용하기
//CLI(Command Line Interface) : DOS창, 터미널창

//Cocoa Pod 이용순서
//0. 기본 xcodeproj프로젝트 닫기
//1. 파인더에서 프로젝트폴더 오른쪽 클릭해서 현재폴더에서 터미널 열기
//2. Cocoa Pod 유틸 설치
//   명령어: sudo gem install cocoapods 엔터
//   Cocoa Pod 업데이트
//   명령어: pod repo update 엔터
//3. 프로젝트 초기화
//  명령어: pod init
//4. 라이브러리 설치
//  명령어: pod install
//5. 프로젝트열기: xcocdeproj -> xcworkspace 열기
//  워크스페이스 열기: 더블클릭 하거나 터미널 open 프로젝트이름.xcworkspace
//6. Xcode에서 pod 파일을 편집하기( 라이브러리 목록 기술 )
//7. 터미널에서 pod install 한번 더하기

//터미널 명령어 - 리눅스 명령어
//1. pwd : 현재 폴더(디렉토리) 위치 보기
//2. ls : 파일 목록 보기
//3. ls -all : 파일 목록 자세히 보기
//4. open : 파일 열기(실행)

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color.init(red: 1.0, green: 1.0, blue: 0.356).ignoresSafeArea()
                VStack {
                    Spacer()
                    
                    Text("TAKE IT EASY").font(Font.custom("Copperplate", size: 18))
                        .foregroundColor(Color(red: 0.125, green: 0.176, blue: 1.0))
                    
                    Text("SeonHo's Coffee").font(Font.custom("Arial Rounded MT Bold", size: 40))
                        .foregroundColor(Color(red: 0.125, green: 0.176, blue: 1.0))
                        .padding(.bottom, 20.0)
                    
                    VStack(spacing: 10) {
                        Button {
                            print("button1 clicked")
                        } label: {
                            NavigationLink(destination: Menu1View()) {
                                Text("커피").foregroundColor(.black)
                                    .padding(.horizontal)
                                    .frame(width: 150.0, height: 30.0, alignment: .center)
                                    .background(.white)
                            }
                        }
                        Button {
                            print("button2 clicked")
                        } label: {
                            NavigationLink(destination: Menu2View()) {
                                Text("음료").foregroundColor(.black)
                                    .padding(.horizontal)
                                    .frame(width: 150.0, height: 30.0, alignment: .center)
                                    .background(.white)
                            }
                        }
                        Button {
                            print("button3 clicked")
                        } label: {
                            NavigationLink(destination: Menu3View()) {
                                Text("디저트").foregroundColor(.black)
                                    .padding(.horizontal)
                                    .frame(width: 150.0, height: 30.0, alignment: .center)
                                    .background(.white)
                            }
                        }
                        Button {
                            print("button4 clicked")
                        } label: {
                            NavigationLink(destination: Menu4View()) {
                                Text("스페셜").foregroundColor(.black)
                                    .padding(.horizontal)
                                    .frame(width: 150.0, height: 30.0, alignment: .center)
                                    .background(.white)
                            }
                        }
                        Button {
                            print("button5 clicked")
                        } label: {
                            NavigationLink(destination: Menu5View()) {
                                Text("매장찾기").foregroundColor(.black)
                                    .padding(.horizontal)
                                    .frame(width: 150.0, height: 30.0, alignment: .center)
                                    .background(.white)
                            }
                        }
                    }
                    
                    Spacer()
                }//VStack
            }//ZStack
        }//NavigationView
    }//body
}//ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
