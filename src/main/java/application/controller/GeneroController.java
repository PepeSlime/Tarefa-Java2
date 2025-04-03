package application.controller;

import application.model.Genero;
import application.repository.GeneroRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/generos")
public class GeneroController {

    @Autowired
    private GeneroRepository generoRepository;

    @GetMapping
    public String listarGeneros(Model model) {
        List<Genero> generos = generoRepository.findAll();
        model.addAttribute("generos", generos);
        return "generos";
    }

    @GetMapping("/novo")
    public String novoGenero(Model model) {
        model.addAttribute("genero", new Genero());
        return "formGenero";
    }

    @PostMapping
    public String salvarGenero(@ModelAttribute Genero genero) {
        generoRepository.save(genero);
        return "redirect:/generos";
    }

    @GetMapping("/editar/{id}")
    public String editarGenero(@PathVariable Long id, Model model) {
        Genero genero = generoRepository.findById(id).orElseThrow(() -> new IllegalArgumentException("ID inválido: " + id));
        model.addAttribute("genero", genero);
        return "formGenero";
    }

    @GetMapping("/deletar/{id}")
    public String deletarGenero(@PathVariable Long id) {
        generoRepository.deleteById(id);
        return "redirect:/generos";
    }
}