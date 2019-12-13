class Item < ActiveHash::Base
  self.data = [
    { id: 1, name: 'サランラップ', url: 'https://lohaco.jp/product/823822/' },
    { id: 2, name: 'アルミホイル', url: 'https://lohaco.jp/product/L06333106/' },
    { id: 3, name: 'クッキングシート', url: 'https://lohaco.jp/product/8352449/' },
  ]
end
