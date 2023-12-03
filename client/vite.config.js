import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  server: {
    host: '0.0.0.0',
    port: 8000, // Docker port
    // If you're using windows and hot reload doesn't work:
     watch: {
       usePolling: true
     }
  }
 })