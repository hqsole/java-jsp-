package com.offcn.ssm.service.admin;

import java.util.List;

import com.offcn.ssm.pojo.Category;

public interface CategoryService {

	void addCategory(Category c);

	List<Category> listCategory();

	Category queryCategoryByCid(String cid);

	void updateCategory(Category c);
}
