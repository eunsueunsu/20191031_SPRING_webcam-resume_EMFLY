package com.kh.emfly.company.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.emfly.company.model.dao.CompanyDao;
import com.kh.emfly.company.model.vo.Company;
import com.kh.emfly.company.model.vo.Hire;
import com.kh.emfly.company.model.vo.THire;

@Service("cService")
public class CompanyServiceImpl implements CompanyService
{   
   @Autowired
   private CompanyDao cDAO;

   @Override
   public List<Hire> listHire()
   {
      return cDAO.listHire();
   }

   @Override
   public List<THire> listTHire()
   {
      return cDAO.listTHire();
   }
   
   @Override
   public String selecthMin(String hNo)
   {
      return cDAO.selecthMin(hNo);
   }
   
   @Override
   public String selecthMax(String hNo)
   {
      return cDAO.selecthMax(hNo);
   }
   
   @Override
   public int insertCompany(Company c)
   {
      return cDAO.insertCompany(c);
   }

   @Override
   public int getListCount(String searchWord) throws Exception{
      return cDAO.getListCount(searchWord);
   }

   @Override
   public List<Company> CompanyList(String searchWord,String checkboxValues,int start,int end) throws Exception{
      return cDAO.CompanyList(searchWord,checkboxValues,start,end);
   }

   @Override
   public Company CompanyDetail(int cId) throws Exception {      
      return cDAO.CompanyDetail(cId);
   }
}




