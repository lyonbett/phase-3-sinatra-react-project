puts "🌱 Seeding spices..."



# Seed Artists
5.times do
  Artist.create(
    name: Faker::Music.band,
    age: Faker::Number.between(from: 18, to: 70)
  )
end

# Seed Songs
10.times do
  Song.create(
    title: Faker::Music::Phish.song,
    artist_id: Artist.pluck(:id).sample,
    year: Faker::Number.between(from: 1970, to: 2023),
    duration: Faker::Number.between(from: 120, to: 600),
    genre: Faker::Music.genre,
    image_url: Faker::LoremPixel.image(size: "300x300")
  )
end

puts "✅ Done seeding!"
