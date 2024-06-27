//
//  PhotosTableViewCell.swift
//  Navigation
//
//  Created by Улугбек Хайтметов on 10.05.2024.
//

import Foundation
import UIKit

class PhotosTableViewCell: UITableViewCell {
    
    private let photoTitle: UILabel = {
            let label = UILabel()
            label.text = "Photos"
            label.textColor = .black
            label.font = UIFont.systemFont(
                ofSize: 24,
                weight: .bold
            )
            return label
        } ()
        
        private let openPhotosButton: UIButton = {
            let button = UIButton()
            button.setImage(
                UIImage(systemName: "arrow.right"),
                for: .normal
            )
            button.tintColor = .black
            return button
        } ()
        
    private let photoCollection: UICollectionView = {
            let viewLayout = UICollectionViewFlowLayout()
            viewLayout.scrollDirection = .horizontal
            let collectionView = UICollectionView(
                frame: .zero,
                collectionViewLayout: viewLayout
            )
            
            return collectionView
        } ()
        
        override init(
            style: UITableViewCell.CellStyle,
            reuseIdentifier: String?
        ) {
            super.init(
                style: style,
                reuseIdentifier: reuseIdentifier
            )
            addSubviews()
            makeLayout()
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        private func addSubviews() {
            [photoTitle,
             openPhotosButton,
             photoCollection].forEach() {
                ($0).translatesAutoresizingMaskIntoConstraints = false
                contentView.addSubview($0)
            }
        }
        
        private func makeLayout() {
            NSLayoutConstraint.activate([
                photoTitle.topAnchor.constraint(
                    equalTo: contentView.topAnchor,
                    constant: 12
                ),
                photoTitle.leadingAnchor.constraint(
                    equalTo: contentView.leadingAnchor,
                    constant: 12
                ),
                
                
                openPhotosButton.centerYAnchor.constraint(
                    equalTo: photoTitle.centerYAnchor
                ),
                openPhotosButton.trailingAnchor.constraint(
                    equalTo: contentView.trailingAnchor,
                    constant: -12
                ),
                openPhotosButton.heightAnchor.constraint(
                    equalTo: photoTitle.heightAnchor
                ),
                openPhotosButton.widthAnchor.constraint(
                    equalTo: photoTitle.heightAnchor
                ),
                
                
                photoCollection.topAnchor.constraint(
                    equalTo: photoTitle.bottomAnchor,
                    constant: 12
                ),
                photoCollection.leadingAnchor.constraint(
                    equalTo: photoTitle.leadingAnchor
                ),
                photoCollection.trailingAnchor.constraint(
                    equalTo: openPhotosButton.trailingAnchor
                ),
                photoCollection.bottomAnchor.constraint(
                    equalTo: contentView.bottomAnchor,
                    constant: -12
                ),
                photoCollection.heightAnchor.constraint(
                    equalToConstant: 60
                )
            ])
        }
        
    }


   

    extension PhotosTableViewCell: UICollectionViewDelegateFlowLayout {
        
        private enum LayoutConstant {
            static let numberOfItemsInRow: CGFloat = 4
            static let spaceSize: CGFloat = 8
        }
        
        private func itemWidth(
            for width: CGFloat,
            spacing: CGFloat
        ) -> CGFloat {
            let itemsInRow: CGFloat = LayoutConstant.numberOfItemsInRow
            let totalSpacing: CGFloat = (itemsInRow + 2) * spacing
            let finalWidth = (width - totalSpacing) / itemsInRow
            
            return floor(finalWidth)
        }
        
        func collectionView(
            _ collectionView: UICollectionView,
            layout collectionViewLayout: UICollectionViewLayout,
            sizeForItemAt indexPath: IndexPath
        ) -> CGSize {
            let width = itemWidth(
                for: contentView.frame.width,
                spacing: LayoutConstant.spaceSize
            )
            let height = width
            
            return CGSize(
                width: width,
                height: height
            )
        }
    }

