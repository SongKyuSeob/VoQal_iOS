//
//  LessonSongWebViewController.swift
//  VoQal_iOS
//
//  Created by 송규섭 on 7/28/24.
//

import UIKit

class LessonSongWebViewController: BaseViewController {
    
    private var lessonSongUrl: String?
    private let lessonSongWebView = LessonSongWebView()

    override func loadView() {
        view = lessonSongWebView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let url = lessonSongUrl {
            lessonSongWebView.setWebViewUrl(url)
        }
        else {
            print("LessonSongWebViewController - url 로드 실패!")
        }
    }
    
    func setLessonSongUrl(_ url: String?) {
        self.lessonSongUrl = url
    }
    

}
