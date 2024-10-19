import React, { useState, useEffect } from 'react';
import BlogList from '../components/BlogList';
import BlogForm from '../components/BlogForm';
import { getBlogs } from '../api';

function Home() {
  const [blogs, setBlogs] = useState([]);

  useEffect(() => {
    fetchBlogs();
  }, []);

  const fetchBlogs = async () => {
    try {
      const response = await getBlogs();
      setBlogs(response.data);
    } catch (error) {
      console.error("Error fetching blogs:", error);
    }
  };

  return (
    <div>
      <h1>Weird Stories From Weirder People</h1>
      <BlogForm refreshBlogs={fetchBlogs} />
      <BlogList blogs={blogs} refreshBlogs={fetchBlogs} />
    </div>
  );
}

export default Home;
