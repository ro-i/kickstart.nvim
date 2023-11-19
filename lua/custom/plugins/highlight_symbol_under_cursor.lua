-- There is also built-in support, but only for LSPs which have the
-- necessary capability.
--
-- Automatically highlight references using LSP, see
-- https://sbulav.github.io/til/til-neovim-highlight-references/
-- Server capabilities spec:
-- https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#serverCapabilities
-- if client.server_capabilities.documentHighlightProvider then
--   vim.api.nvim_create_augroup("lsp_document_highlight", { clear = true })
--   vim.api.nvim_clear_autocmds { buffer = bufnr, group = "lsp_document_highlight" }
--   vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
--     callback = vim.lsp.buf.document_highlight,
--     buffer = bufnr,
--     group = "lsp_document_highlight",
--     desc = "Document Highlight",
--   })
--   vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
--     callback = vim.lsp.buf.clear_references,
--     buffer = bufnr,
--     group = "lsp_document_highlight",
--     desc = "Clear All the References",
--   })
-- end
return {
  "RRethy/vim-illuminate",
}
