class Game
  attr_reader :errors, :letters, :good_letters, :bad_letters, :status

  def initialize(slovo)
    @letters = get_letters(slovo)

    @errors = 0

    @good_letters = []
    @bad_letters = []

    @status = 0
  end

  def get_letters(slovo)
    if slovo == nil || slovo == ""
      abort "Загадано пустое слово"
    end

    return slovo.downcase.encode('UTF-8').split("")
  end

  def ask_next_letter
    puts "\nВведите следующую букву"

    letter = ""

    while letter == ""
      letter = STDIN.gets.encode("UTF-8").chomp.downcase
    end

    next_step(letter)
  end

  def next_step(bukva)
    if @status == -1 || @status == 1
      return
    end

    if @good_letters.include?(bukva) || @bad_letters.include?(bukva)
      return
    end

    if letters.include?(bukva) ||
      (bukva == "е" && letters.include?("ё")) ||
      (bukva == "ё" && letters.include?("е")) ||
      (bukva == "и" && letters.include?("й")) ||
      (bukva == "й" && letters.include?("и"))

      good_letters << bukva

      case bukva
        when "е" then good_letters << "ё"
        when "ё" then good_letters << "е"
        when "и" then good_letters << "й"
        when "й" then good_letters << "и"
      end
      
      if (letters - good_letters).empty?
        @status = 1
      end

    else
      case bukva
        when "е" then bad_letters << "ё"
        when "ё" then bad_letters << "е"
        when "и" then bad_letters << "й"
        when "й" then bad_letters << "и"
      end

      @bad_letters << bukva
      @errors += 1

      if @errors >= 7
        @status = -1
      end
    end
  end
end
