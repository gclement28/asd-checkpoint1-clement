# asd-checkpoint1-clement

# Questions sur le thème DevOps

## 5.1 Qu'est-ce que l'infrastructure as code (IaC) ?

L'infrastructure as code est une pratique DevOps pour gérer et à provisionner l'infrastructure informatique via des fichiers de configuration au lieu de le faire manuellement. Cela permet de versionner, tester et déployer l'infrastructure de manière automatisée et reproductible.

## 5.2 Est-ce que Docker est une nécessité dans le milieu DevOps ? (Expliquer la réponse)

Docker n'est pas une nécessité absolue dans le milieu DevOps, mais il est beaoucoup utilisé en raison de ses avantages. il permet de créer des conteneurs légers et portables qui encapsulent une application et ses dépendances, facilitant ainsi le déploiement et la gestion des environnements de dev et de production.

## 5.3 Qu'est-ce qu'une pipeline CI/CD ?

Une pipeline CI/CD (Continuous Integration/Continuous Deployment) est un ensemble de processus automatisés qui permettent de construire, tester et déployer des applications de manière continue. La CI vérifie que le code intégré fonctionne correctement, alors que la CD automatise le déploiement du code dans différents environnements, y compris la production.

## 5.4 Quel outil (logiciel) utiliserais tu pour gérer des configurations serveurs à distance ?

Pour gérer des configurations serveurs à distance, j'utiliserais Ansible. c'est un outil d'automatisation open-source qui permet de gérer la configuration, le déploiement et l'orchestration des serveurs de manière simple, sans nécessiter d'agent sur les machines cibles.

## 5.5 Que signifie le terme "scalabilité" pour le milieu DevOps ?

Dans le milieu DevOps, la scalabilité est la capacité d'un système ou d'une application à s'adapter à une charge de travail croissante en augmentant les ressources sans interruption de service, de manière efficace.

## 5.6 Quel est le principal rôle d'un administrateur système DevOps en entreprise ?

Le principal rôle d'un administrateur système DevOps en entreprise est de faciliter la collaboration entre les équipes de développement et d'opérations pour améliorer la rapidité et la qualité des déploiements logiciels (automatisation de processus, gestion de l'infrastructure, surveillance des systèmes etc)

## 5.7 Quel outil (plateforme) utiliserais tu pour créer une pipeline de déploiement logiciel ?

## 5.8 Quels types d'environnements mettrais tu en place avant une mise en production de logiciel ?

Avant une mise en production de logiciel, je mettrais en place les environnements suivants :

1. **Environnement de développement** : Pour le développement et les tests unitaires.
2. **Environnement de test** : Pour les tests d'intégration et les tests fonctionnels.
3. **Environnement de staging** : Pour les tests de pré-production et la validation finale avant le déploiement en production.
4. **Environnement de production** : Pour le déploiement final et l'utilisation par les utilisateurs finaux.

## 5.9 Qu'est-ce que signifie exactement la notion d'intégration continue (CI) ?

L'intégration continue (CI) signifie que les développeurs intègrent fréquemment leur code dans un dépôt partagé. Chaque intégration est automatiquement vérifiée par une construction automatisée et des tests automatisés,qui permettent de détecter rapidement les problèmes et d'assurer des versions stables du code.

## 5.10 Que signifie la notion de "provisionning" pour un administrateur système DevOps ?

Le provisionning signifie pour un admin sys DevOps le processus de préparation et de gestion des ressources nécessaires pour une application ou un service (configuration des serveurs, bases de données, réseaux etc)
