module GamesHelper
  def display_game_image(game)
    if game.main_image.attached?
      image_tag game.main_image, size: "250x400"
    else
      image_tag("default.png", size: "250x400")
    end
  end
end
