# --- Étape 1 : Builder (On compile le code) ---
# On utilise une image complète (avec compilateur gcc, etc.)
FROM golang:1.19 AS builder

WORKDIR /app
COPY main.go .

# On compile l'application (Go produit un binaire statique)
RUN go build -o mon-app main.go

# --- Étape 2 : Runner (Production) ---
# On repart d'une image vide ou très légère (Alpine)
FROM alpine:latest

WORKDIR /root/

# On copie JUSTE le binaire compilé depuis l'étape 1
COPY --from=builder /app/mon-app .

# L'image finale ne contient QUE l'OS minimal et le binaire.
# Pas de code source, pas de compilateur Go. Ultra léger !
CMD ["./mon-app"]
