import React, { useState } from 'react';
import { deleteBlog, updateBlog } from '../api';

function BlogItem({ blog, refreshBlogs }) {
  const [isEditing, setIsEditing] = useState(false);
  const [editTitle, setEditTitle] = useState(blog.title);
  const [editContent, setEditContent] = useState(blog.content);
  const [editVibe, setEditVibe] = useState(blog.vibe || '');

  const handleDelete = async () => {
    try {
      await deleteBlog(blog.id);
      refreshBlogs();
    } catch (error) {
      console.error("Error deleting blog:", error);
    }
  };

  const handleUpdate = async (e) => {
    e.preventDefault();
    try {
      await updateBlog(blog.id, {
        title: editTitle,
        content: editContent,
        vibe: editVibe,
      });
      refreshBlogs();
      setIsEditing(false);
    } catch (error) {
      console.error("Error updating blog:", error);
    }
  };

  return (
    <div className="blog-item">
      {isEditing ? (
        <form onSubmit={handleUpdate}>
          <div>
            <label>Title</label>
            <input
              type="text"
              value={editTitle}
              onChange={(e) => setEditTitle(e.target.value)}
              required
            />
          </div>
          <div>
            <label>Content</label>
            <textarea
              value={editContent}
              onChange={(e) => setEditContent(e.target.value)}
              required
            />
          </div>
          <div>
            <label>Vibe</label>
            <input
              type="text"
              value={editVibe}
              onChange={(e) => setEditVibe(e.target.value)}
            />
          </div>
          <button type="submit">Save</button>
          <button type="button" onClick={() => setIsEditing(false)}>Cancel</button>
        </form>
      ) : (
        <>
          <h2>{blog.title}</h2>
          <p>{blog.content}</p>
          {blog.vibe && <p><strong>Vibe:</strong> {blog.vibe}</p>}
          {blog.imageUrl && <img src={blog.imageUrl} alt={blog.title} />}
          <button onClick={() => setIsEditing(true)}>Edit</button>
          <button onClick={handleDelete}>Delete</button>
        </>
      )}
    </div>
  );
}

export default BlogItem;
