# ログ出力用のメソッドを提供するモジュール
module Loggable
    private
    def log(text)
        puts "[LOG] #{text}"
    end
end

class Product
    # moduleをincludeする
    include Loggable

    def title
        log 'title is called.'
        'A greate movie'
    end
end

class User
    include Loggable

    def name
        log 'name is called.'
        'Alice'
    end
end

product = Product.new
product.title
user = User.new
user.name
# user.log 'outsider log'