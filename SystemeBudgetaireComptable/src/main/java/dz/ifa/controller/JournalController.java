package dz.ifa.controller;


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.hibernate.tool.schema.extract.spi.ExtractionContext.DatabaseObjectAccess;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dz.ifa.model.Operation;
import dz.ifa.model.OperationBudgetaire;
import dz.ifa.model.OperationComptable;
import dz.ifa.service.OperationService;

@Controller

public class JournalController {

		
	@Autowired
	private OperationService operationService;
	/*
		@RequestMapping(value="/journal", method=RequestMethod.GET)
		public ModelAndView listOps() {
		System.out.println("date");
		List <OperationBudgetaire> opsBudg = operationService.getAllOperationsBudgetaires();
		/*for(OperationBudgetaire Iop: opsBudg) {
			Iop.getOperationComptable().setCreditdebit();
		}///ferme ici
		
		List <OperationComptable> opsCompt = operationService.getAllOperationsComptables();*/
		/*for(OperationComptable Iop: opsCompt) {
			Iop.setCreditdebit();
		}//fermer ici*/
			
		/*Operation operation = new Operation(opsCompt,opsBudg);
		ModelAndView mv = new ModelAndView("journal");
		mv.addObject("listOp",operation);
		
		return mv;
	}*///,@RequestParam(value="dateFin",required=false, defaultValue="dd-dd-yyyy") Date dateFin,
		@RequestMapping(value ="/journal")
		public String listOpsDF(@RequestParam(value="searchOption",required=true, defaultValue="1") int searchOp,@RequestParam(value="dateDeb",required=true, defaultValue="") String dateDeb,@RequestParam(value="dateFin",required=false, defaultValue="") String dateFin,Model md ) {

			System.out.println("hello");
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

			Date dateOperationDeb = new Date();
			Date dateOperationFin = new Date();


			
			List <OperationBudgetaire> opsBudg ;
			List <OperationComptable> opsCompt ;
			
			if (!dateDeb.isEmpty() && !dateFin.isEmpty()){
				try {
					dateOperationDeb = new SimpleDateFormat("yyyy-MM-dd", Locale.FRENCH).parse(dateDeb);
					dateOperationFin = new SimpleDateFormat("yyyy-MM-dd",Locale.FRENCH).parse(dateFin);

				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println(dateDeb);
				System.out.println(dateOperationDeb);
			 opsBudg = operationService.getListOperationsBudgetaires(dateOperationDeb, dateOperationFin);
			 opsCompt= operationService.getListOperationsComptables(dateOperationDeb, dateOperationFin);
			 
			}else{
			 opsBudg = operationService.getAllOperationsBudgetaires();
			 opsCompt = operationService.getAllOperationsComptables();
			}
			for(OperationBudgetaire IopBudg :opsBudg){
				IopBudg.setDebitCreditCompt();
			}
			
			for(OperationComptable IopCompt :opsCompt){
				IopCompt.setCreditdebit();
			}
			if(searchOp==2){
				opsBudg=null;
			}else {
				if (searchOp==3) {
					opsCompt=null;
				}
			}
			Operation operation = new Operation(opsCompt,opsBudg);
			md.addAttribute("listOp",operation);
			return "journal";
		}
	
	//@RequestMapping(value="/journal", method=RequestMethod.GET)
	/*public ModelAndView listOpsBudg() {
		
		
		List <OperationBudgetaire> opsBudg = operationService.getAllOperationsBudgetaires();
		
		
		
		return new ModelAndView("journal", "listBudg", opsBudg);
    }
	
	//@RequestMapping(value="/journal", method=RequestMethod.GET)
	public ModelAndView listOpsCompt() {
		
		
		List <OperationComptable> opsCompt = operationService.getAllOperationsComptables();
	    
		
		return new ModelAndView("journal", "listCompt", opsCompt);
    }*/
	
	
	
}
