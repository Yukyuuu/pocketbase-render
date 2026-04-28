const pb = new PocketBase('http://127.0.0.1:8090');

// 获取书籍列表
async function loadBooks() {
  const data = await pb.collection('books').getFullList();
  console.log(data);
  // 渲染页面逻辑
}
loadBooks();