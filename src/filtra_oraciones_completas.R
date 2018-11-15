filtra_oraciones_completas <- function(.data){
  .data %>% 
    mutate(longitud = str_length(phrase)) %>% 
    group_by(sentence_id) %>% 
    filter(longitud == max(longitud)) %>%  
    ungroup() %>% 
    select(-longitud)
}

