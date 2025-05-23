deploy_quarto_site <- function() {
  # Render le site
  quarto::quarto_render()
  
  # Configurer Git si nécessaire
  if (!usethis::uses_git()) usethis::use_git()
  if (!usethis::uses_github()) usethis::use_github()
  
  # Pousser les changements
  system("git add .")
  system('git commit -m "Update site"')
  system("git push")
}

# Exécutez la fonction
deploy_quarto_site()