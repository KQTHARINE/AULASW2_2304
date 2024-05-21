package application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import application.repository.GeneroRepository;
import application.repository.LivroRepository;

@Controller
@RequestMapping("/livros")
public class LivroController {
    @Autowired
    private LivroRepository livrosRepo;
    @Autowired
    private GeneroRepository generosRepo;

    @RequestMapping("/list")
    public String list(Model ui){
        ui.addAttribute("livro", livrosRepo.findAll());
        return "/livro/list";     
    }

    @RequestMapping("/insert")
    public String insert(Model ui){
        ui.addAttribute("generos", generosRepo.findAll());
        return "/livro/insert";     
    }
}
