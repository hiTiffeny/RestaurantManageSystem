package RCMS.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			String uploadPath = getServletContext().getRealPath(
					"/upload");// 上传目录 //放在webinf文件夹下用户无法访问 保证安全

			// 1、得到DiskFileItemFacotry对象
			DiskFileItemFactory factory = new DiskFileItemFactory();// 10k
			// 建立一个临时文件/temp // java.io.tmpdir(System.getProperty)
			String tempPath = getServletContext().getRealPath("/temp");
			factory.setRepository(new File(tempPath));// 组件默认不会删除临时文件，

			// 2、得到上传文件的核心类ServletFileUpload
			ServletFileUpload upload = new ServletFileUpload(factory);
			// 实时获取文件上传进度

			upload.setHeaderEncoding("UTF-8");// 解决中文文件名乱码问题
			// upload.setFileSizeMax(10*1024*1024);//单个文件最大字节
			// upload.setSizeMax(100*1024*1024);//总文件大小
			// 3、判断用户的表单有没有设置为multipart/form-data
			boolean b = upload.isMultipartContent(request);
			if (!b)
				return;

			// 4、如果设置了，解析request中的主体内容，List<FileItem>
			List<FileItem> items = upload.parseRequest(request);
			// 5、遍历List
			for (FileItem item : items) {
				if (item.isFormField()) {
					// 6、如果是普通字段，打印
					String fieldName = item.getFieldName();
					String value = item.getString("UTF-8");// String value = new
															// //
															// String(item.getString().getBytes("ISO-8859-1"),"UTF-8");
					//System.out.println(fieldName + "=" + value);
				} else {
					// 7、上传：上传到哪个目录
					String fileName = item.getName();// 获取文件名 C:\Documents and
														// Settings\wzhting\a.txt
					// System.out.println(fileName);
					if (fileName == null || fileName.trim().equals("")) {
						continue;
					}
					fileName = fileName
							.substring(fileName.lastIndexOf("\\") + 1);// a.txt
					InputStream in = item.getInputStream();// 获取输入流
					// 构建输出流
					String newFilePath = uploadPath + "\\" +fileName;// UUID.randomUUID()+ fileName.substring(fileName.lastIndexOf("."));
					//System.out.println(newFilePath);
					FileOutputStream out = new FileOutputStream(newFilePath);
					byte buf[] = new byte[1024];
					int len = -1;
					while ((len = in.read(buf)) != -1) {
						out.write(buf, 0, len);
					}
					in.close();
					out.close();
					item.delete();

				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
