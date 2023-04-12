-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT 
	tracks.Name,
	tracks.Composer,
	invoice_items.InvoiceLineId,
	invoice_items.InvoiceId,
	invoice_items.TrackId,
	invoice_items.UnitPrice,
	invoice_items.Quantity
FROM invoice_items
JOIN tracks 
	USING (TrackId,TrackId) 


