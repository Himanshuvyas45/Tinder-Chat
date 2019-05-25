//
//  ViewController.swift
//  messengert
//
//  Created by admin on 23/05/19.
//  Copyright © 2019 professional. All rights reserved.
//

import LBTATools

struct Match {
    let imageName, username: String
}
class MatchCell: LBTAListCell<Match> {

    let imageView = CircularImageView(width: 80, image: UIImage(named: "harmaini"))
    let nameLabel = UILabel(text: "User name", font: .boldSystemFont(ofSize: 14), textColor: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1), numberOfLines: 2)
    override var item: Match! {
        didSet {
            imageView.image = UIImage(named: item.imageName)
            nameLabel.text = item.username

            stack(imageView,
                  nameLabel,
                  spacing: 4,
                  alignment: .center)
        }
    }
}
class MatchesController: LBTAListController<MatchCell, Match>, UICollectionViewDelegateFlowLayout {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        items = [
            .init(imageName: "harmaini", username: "Emma Watson"),
            .init(imageName: "ginny", username: "Bonnie Wright"),
            .init(imageName: "harry", username: "Deniel Radcliffe"),
            .init(imageName: "luna", username: "Evanna Lynch"),
            .init(imageName: "cho", username: "Katie Leung"),
            .init(imageName: "ron", username: "Rupert Grint"),
             .init(imageName: "sirias", username: "Gary Oldman"),
             .init(imageName: "dambledoor", username: "Michael Gambon")
        ]
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: 100, height: view.frame.height)
    }
}
class Header: UICollectionReusableView {

    let newMatchesLabel = UILabel(text: "New Matches", font: .boldSystemFont(ofSize: 14), textColor: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))

    let matchesController = MatchesController(scrollDirection: .horizontal)

    let messagesLabel = UILabel(text: "Harry-Potter", font: .boldSystemFont(ofSize: 14), textColor: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))

    override init(frame: CGRect) {
        super.init(frame: frame)

        stack(hstack(newMatchesLabel).padLeft(16),
              matchesController.view,
              hstack(messagesLabel).padLeft(16),
              spacing: 12).padTop(16)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}

//// for messag cells
//
class UIViewController: LBTAListHeaderController<MessageCell, Message, Header>,UICollectionViewDelegateFlowLayout {



    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: 180)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Harry Potter"
        items = [
            .init(userProfileImageName: "harmaini", username: "Emma Watson", text: "Excuse me, I don’t like people just because they’re handsome!"),
            .init(userProfileImageName: "luna", username: "Evanna Lynch", text: "you're just as same as i am."),
            .init(userProfileImageName: "harry", username: "Deniel Radcliffe", text: "Time will not slow down when something unpleasant lies ahead"),
            .init(userProfileImageName: "cho", username: "Katie Leung", text: "i lke you Harry..!"),
            .init(userProfileImageName: "ginny", username: "Bonnie Wright", text: "Anything's possible if you've got enough nerve"),
            .init(userProfileImageName: "sirias", username: "Gary Oldman", text: "If you want to know what a man’s like, take a good look at how he treats his inferiors, not his equals."),
            .init(userProfileImageName: "dambledoor", username: "Michael Gambon", text: "It does not do well to dwell on dreams and forget to live"),
            .init(userProfileImageName: "ron", username: "Rupert Grint", text: "You're a little scary sometimes, you know that? Brilliant ... but scary,")
        ]
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 100)
    }
}


class viewcontroller: UIViewController {
 override func viewDidLoad() {
       
    view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
