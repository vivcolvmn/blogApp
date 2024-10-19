import axios from 'axios';

const API_URL = 'http://localhost:5000/api/blogs';

export const getBlogs = () => axios.get(API_URL);
export const createBlog = (blogData) => axios.post(API_URL, blogData);
export const updateBlog = (id, updatedData) => axios.put(`${API_URL}/${id}`, updatedData);
export const deleteBlog = (id) => axios.delete(`${API_URL}/${id}`);
