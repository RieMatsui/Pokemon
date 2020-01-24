class Main

  # どのポケモンを選択しますか?番号を入力してください!
  # をinfo_messageに代入してください。ただし、文章は改行してください。
  info_message = "どのポケモンを選択しますか?\n番号を入力してください!"

  # 最初に選択するポケモンを配列「first_pokemons」に代入します。
  # 設定するポケモンは、'サルノリ', 'ヒバニー', 'メッソン'をセットしてください。
  first_pokemons = ['サルノリ', 'ヒバニー', 'メッソン']

  # info_messageをコンソールに表示してください。
  puts(info_message)

  # 1.サルノリ
  # 2.ヒバニー
  # 3.メッソン
  # を配列の中身を表示して、画面に表示してください。
  index = 0
  first_pokemons.each do |pokemon|
    display_num = index + 1
    puts(display_num.to_s + '.' + pokemon)
    index = index + 1
  end

  # 入力した文字を数字で取得してください。
  select_num = gets.to_i

  # 入力可能な最大数にfirst_pokemonsの配列の要素の数を代入してください。
  max_num = first_pokemons.size
  min_num = 1

  # 入力可能な文字でないときに表示するメッセージを代入してください。
  error_message = "#{min_num}~#{max_num}までの数字を入力してください。"

  # 入力した文字が1より小さく要素の数より大きい場合は処理を繰り返してください。
  while select_num < min_num  || select_num > max_num
    # error_messageをコンソールに表示してください。
    puts(error_message)
    # info_messageをコンソールに表示してください。
    puts(info_message)
    select_num = gets.to_i
  end

  # 入力した数字に「−1」してインデックスに代入してください。
  index = select_num - 1
  # 選択したポケモンをanswerに代入してください。
  answer = first_pokemons[index]
  # answerを選択しました!をコンソールに表示してください。
  result_message = "#{answer}を選択しました!"
  puts(result_message)

end