import React from 'react';
import { useParams } from 'react-router-dom';

function BlogDetail() {
  const { id } = useParams();

  return (
    <div>
      <h2>Blog Detail for ID: {id}</h2>
      {/* Fetch and display the detailed content of the blog */}
    </div>
  );
}

export default BlogDetail;
