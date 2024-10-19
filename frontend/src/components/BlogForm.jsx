import React, { useState } from 'react';
import { createBlog } from '../api';
import axios from 'axios';

function BlogForm({ refreshBlogs }) {
  const [title, setTitle] = useState('');
  const [content, setContent] = useState('');
  const [vibe, setVibe] = useState('');
  const [imageUrl, setImageUrl] = useState(null);

  const handleSubmit = async (e) => {
    e.preventDefault();

    const newBlog = {
      title,
      content,
      vibe,
      imageUrl,
    };

    try {
      await createBlog(newBlog);
      refreshBlogs();
      setTitle('');
      setContent('');
      setVibe('');
      setImageUrl(null);
    } catch (error) {
      console.error("Error creating blog:", error);
    }
  };

  const handleGenerateImage = async () => {
    const prompt = `${vibe || ''} ${content}`;
    try {
      const response = await axios.post('http://localhost:5000/api/generate-image', { prompt });
      setImageUrl(response.data.imageUrl);
    } catch (error) {
      console.error("Error generating image:", error);
    }
  };

  return (
    <form onSubmit={handleSubmit}>
      <h2>Create a New Blog Post</h2>
      <div>
        <label>Title (Required)</label>
        <input
          type="text"
          value={title}
          onChange={(e) => setTitle(e.target.value)}
          required
        />
      </div>
      <div>
        <label>Content (Required)</label>
        <textarea
          value={content}
          onChange={(e) => setContent(e.target.value)}
          required
        />
      </div>
      <div>
        <label>Vibe (Optional)</label>
        <input
          type="text"
          value={vibe}
          onChange={(e) => setVibe(e.target.value)}
        />
      </div>
      <div>
        <button type="submit">Create Post</button>
        <button type="button" onClick={handleGenerateImage}>Generate Image</button>
      </div>
      {imageUrl && (
        <div>
          <p>Generated Image:</p>
          <img src={imageUrl} alt="Generated" style={{ maxWidth: '100%' }} />
        </div>
      )}
    </form>
  );
}

export default BlogForm;
