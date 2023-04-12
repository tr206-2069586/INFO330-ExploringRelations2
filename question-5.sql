-- What was the most purchased track of 2013?
SELECT 
	tracks.Name,
	tracks.Composer,
	COUNT(invoice_items.Quantity) totalQuantity
FROM invoice_items
LEFT JOIN tracks 
	ON invoice_items.TrackId = tracks.TrackId
LEFT JOIN invoices 
	ON invoice_items.InvoiceId = invoices.InvoiceId
WHERE substr(invoices.InvoiceDate,1,4) == '2013'
GROUP BY tracks.TrackId
-- a little confused here as I was debating doing name, but it seems like the track name would be inaccurate because track names might have matching names of other artists
ORDER BY totalQuantity DESC
