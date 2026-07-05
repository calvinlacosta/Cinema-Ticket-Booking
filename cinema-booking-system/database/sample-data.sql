USE cinema_booking;

INSERT INTO users (name, email, password, role) VALUES
('Admin User', 'admin@example.com', 'password', 'admin'),
('Sample User', 'user@example.com', 'password', 'user');

INSERT INTO movies (title, description, genre, duration_minutes, release_date, poster) VALUES
('The Midnight Show', 'A thriller about a late-night screening.', 'Thriller', 118, '2024-01-20', 'midnight-show.jpg'),
('Sunset Horizon', 'An emotional drama set in the coast.', 'Drama', 105, '2024-03-10', 'sunset-horizon.jpg');

INSERT INTO cinemas (name, location) VALUES
('Grand Cinema', 'Downtown'),
('Metro Plaza', 'Central Avenue');

INSERT INTO schedules (movie_id, cinema_id, show_time, price) VALUES
(1, 1, '2026-07-10 19:30:00', 220.00),
(2, 2, '2026-07-11 20:00:00', 180.00);
