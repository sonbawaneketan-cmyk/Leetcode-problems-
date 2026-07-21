SELECT
    l.book_id,
    l.title,
    l.author,
    l.genre,
    l.publication_year,
    COUNT(*) AS current_borrowers
FROM library_books AS l
JOIN borrowing_records AS b
ON l.book_id = b.book_id
WHERE b.return_date IS NULL
GROUP BY
    l.book_id,
    l.title,
    l.author,
    l.genre,
    l.publication_year,
    l.total_copies
HAVING COUNT(*) = l.total_copies
ORDER BY current_borrowers DESC, l.title ASC;