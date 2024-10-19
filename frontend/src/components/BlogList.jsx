import React from 'react';
import BlogItem from './BlogItem';

function BlogList({ blogs, refreshBlogs }) {
  return (
    <div>
      {blogs.map(blog => (
        <BlogItem key={blog.id} blog={blog} refreshBlogs={refreshBlogs} />
      ))}
    </div>
  );
}

export default BlogList;
