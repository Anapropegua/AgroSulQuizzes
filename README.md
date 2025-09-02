# AgroSul Quizzes - Sistema de Feedback

## 📋 Sobre o Projeto

O **AgroSul Quizzes** é um aplicativo Flutter desenvolvido para coletar feedback e pesquisas de satisfação durante eventos agropecuários, especificamente para:

- 🌾 **1ª Feira da Agricultura Familiar do Sul do Piauí**
- 🌱 **1º Encontro de Agroecologia do Sul do Piauí**

O sistema permite avaliar a experiência de dois tipos de usuários:
- **Participantes**: Visitantes e pessoas que comparecem ao evento
- **Produtores**: Agricultores familiares que expõem seus produtos

## 🚀 Funcionalidades

### ✨ Principais Recursos

- **📋 Questionários Personalizados**: Sistema de perguntas específicas para participantes e produtores
- **🔄 Modo Online/Offline**: Sincronização automática quando há conexão de internet
- **📊 Múltiplos Tipos de Pergunta**: 
  - Perguntas objetivas (múltipla escolha)
  - Perguntas abertas (texto livre)
- **💾 Armazenamento Local**: Respostas ficam salvas localmente até serem sincronizadas
- **🎨 Interface Intuitiva**: Design moderno e fácil de usar
- **📱 Multiplataforma**: Funciona em Android, iOS, Web, Windows, macOS e Linux

### 🎯 Categorias de Avaliação

#### Para Participantes:
- Experiência geral do evento
- Avaliação do credenciamento
- Qualidade do site do evento
- Avaliação de palestras e seminários
- Organização geral
- Infraestrutura (banheiros, bebedouros, etc.)
- Feira de exposição
- Sugestões e melhorias

#### Para Produtores:
- Experiência com vendas
- Qualidade do espaço fornecido
- Interesse pelos produtos
- Oportunidades de networking
- Logística do evento
- Apoio aos produtores
- Sugestões específicas

## 🛠️ Tecnologias Utilizadas

### 📱 Framework e Linguagem
- **Flutter** 3.2.3+ (Dart SDK)
- **Dart** como linguagem principal

### 🏗️ Arquitetura e Padrões
- **BLoC Pattern** (Business Logic Component)
- **Clean Architecture** com separação de responsabilidades
- **Dependency Injection** com GetIt
- **Repository Pattern** para abstração de dados

### 📦 Principais Dependências

```yaml
dependencies:
  flutter_bloc: ^8.1.5          # Gerenciamento de estado
  bloc: ^8.1.4                  # Padrão BLoC
  equatable: ^2.0.5             # Comparação de objetos
  dartz: ^0.10.1                # Programação funcional
  get_it: ^7.7.0                # Injeção de dependência
  hasura_connect:               # Conexão com GraphQL/Hasura
  shared_preferences: ^2.2.3     # Armazenamento local
  connectivity: ^3.0.6          # Verificação de conectividade
  google_fonts: ^6.2.1          # Fontes personalizadas
  flutter_svg: ^0.22.0          # Suporte a SVG
```

## 🏗️ Arquitetura do Projeto

```
lib/
├── main.dart                  # Ponto de entrada da aplicação
└── src/
    ├── bloc/                  # Lógica de negócio (BLoC)
    │   ├── questions_bloc.dart
    │   ├── questions_event.dart
    │   └── questions_state.dart
    ├── core/                  # Configurações centrais
    │   ├── constants.dart     # Constantes e perguntas
    │   ├── inject.dart        # Injeção de dependência
    │   ├── theme.dart         # Tema da aplicação
    │   ├── access_api.dart    # Configurações da API
    │   └── exception.dart     # Tratamento de exceções
    ├── models/                # Modelos de dados
    │   └── entities/
    │       └── question_entity.dart
    ├── routes/                # Roteamento
    │   └── router.dart
    ├── screens/               # Telas da aplicação
    │   ├── home_screen.dart
    │   └── question_screen.dart
    ├── services/              # Serviços e API
    │   ├── service.dart
    │   └── service_impl.dart
    └── widgets/               # Componentes reutilizáveis
        ├── answers_container.dart
        ├── question_container.dart
        └── quiz_app_bar.dart
```

## 🚀 Como Executar

### 📋 Pré-requisitos

- Flutter SDK 3.2.3 ou superior
- Dart SDK 
- Android Studio / VS Code
- Emulador Android/iOS ou dispositivo físico

### 🔧 Instalação

1. **Clone o repositório**
   ```bash
   git clone https://github.com/Anapropegua/AgroSulQuizzes.git
   cd AgroSulQuizzes
   ```

2. **Instale as dependências**
   ```bash
   flutter pub get
   ```

3. **Execute a aplicação**
   ```bash
   flutter run
   ```

### 🌐 Build para Produção

```bash
# Android
flutter build apk --release

# iOS
flutter build ios --release

# Web
flutter build web --release

# Windows
flutter build windows --release
```

## 🗄️ Banco de Dados

### 🔗 Backend
- **Hasura GraphQL Engine**: Para API GraphQL
- **PostgreSQL**: Banco de dados relacional
- **GraphQL Mutations**: Para inserção de respostas

### 📊 Estrutura de Dados

```sql
-- Tabela principal para armazenar respostas
answer {
  id: UUID
  type: String         -- Tipo do questionário (participante/produtor)
  form: String         -- Categoria da pergunta (múltipla escolha/aberta)
  answers: JSONB       -- Respostas em formato JSON
  created_at: Timestamp
}
```

## 🔄 Funcionalidades Técnicas

### 📱 Gerenciamento de Estado (BLoC)

```dart
// Estados possíveis da aplicação
enum QuestionStatus { initial, loading, success, error }

// Eventos disponíveis
- NextQuestionEvent()           // Próxima pergunta
- PreviousQuestionEvent()       // Pergunta anterior  
- SetAnswerQuestionEvent()      // Definir resposta
- SubmitAnswersEvent()          // Enviar respostas
- ClearAnswersEvent()           // Limpar respostas
```

### 🌐 Sistema Online/Offline

- **Modo Online**: Respostas enviadas diretamente para o servidor
- **Modo Offline**: Respostas armazenadas localmente via SharedPreferences
- **Sincronização**: Botão de sync na tela inicial para enviar dados offline

### 🎨 Temas e Design

- **Google Fonts**: Fonte Baloo2 para melhor legibilidade
- **Material Design**: Seguindo diretrizes do Material 3
- **Responsivo**: Adaptável a diferentes tamanhos de tela
- **Cores**: Paleta focada em tons de verde (agricultura)

## 📊 Tipos de Questionários

### 🎯 Participantes (26 perguntas)
1. Experiência geral (escala 1-5)
2. Credenciamento (escala 1-5)
3. Site do evento (escala 1-5)
4. Campanhas de divulgação (escala 1-5)
5. Minicursos (escala 1-5)
6. Oficinas (escala 1-5)
7. Mesas redondas (escala 1-5)
8. Palestras (escala 1-5)
9. Seminários temáticos (escala 1-5)
10. Feira dos produtores (escala 1-5)
... (+ perguntas abertas)

### 🌾 Produtores (10 perguntas)
1. Experiência com vendas (escala 1-5)
2. Espaço para exposição (escala 1-5)
3. Interesse pelos produtos (Sim/Não)
4. Oportunidades de networking (Sim/Não)
5. Novos contatos comerciais (Sim/Não)
6. Logística do evento (escala 1-5)
7. Problemas logísticos (Sim/Não)
... (+ perguntas abertas)

## 🔒 Segurança e API

- **Hasura Admin Secret**: Autenticação via chave secreta
- **GraphQL Endpoint**: `https://agrosul.hasura.app/v1/graphql`
- **Mutations**: Inserção segura de dados
- **Validação**: Validação local antes do envio

## 🤝 Contribuindo

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📝 Licença

Este projeto está sob a licença [MIT](LICENSE).

## 👥 Equipe

- **Desenvolvedor**: Marcos Amaral
- **Organização**: Anapropegua
- **Evento**: 1ª Feira da Agricultura Familiar do Sul do Piauí

## 📞 Contato

Para dúvidas ou sugestões sobre o projeto:

- 📧 **Email**: [contato@anapropegua.com](mailto:contato@anapropegua.com)
- 🌐 **GitHub**: [@Anapropegua](https://github.com/Anapropegua)

---

<div align="center">
  <strong>🌾 Desenvolvido para a Agricultura Familiar do Sul do Piauí 🌱</strong>
</div>
