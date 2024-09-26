# Go Web Application with CI/CD Pipeline

This project showcases a containerized Go web application that leverages a modern CI/CD pipeline using GitHub Actions for continuous integration and ArgoCD for GitOps-based continuous delivery. The infrastructure is orchestrated with Kubernetes, and Helm is used to manage the deployments. This setup ensures a scalable, automated, and reliable deployment process from code commit to production.

This project demonstrates the complete lifecycle of a Go web application, from containerization to deployment, using modern DevOps tools and practices. It includes:

- Dockerized Go web application
- Kubernetes manifests and Helm charts for deployment
- Continuous Integration (CI) with GitHub Actions
- Continuous Delivery (CD) with GitOps via ArgoCD

## Features

- **Containerization**: The Go web application is containerized using Docker for consistent and portable runtime environments.
- **Kubernetes Deployment**: Kubernetes manifests are provided to deploy the application on a Kubernetes cluster. Additionally, Helm charts are available for easier and more flexible deployments.
- **CI with GitHub Actions**: A robust CI pipeline is implemented using GitHub Actions, ensuring automated testing and building of the Docker images upon code changes.
- **CD with ArgoCD**: GitOps principles are applied for Continuous Delivery using ArgoCD, allowing automated deployment to Kubernetes clusters from a version-controlled source.

## Getting Started

```bash
1. Clone the repository
    git clone https://github.com/your-repo/go-web-app.git
    cd go-web-app

2. Build the Docker Image
    docker build -t go-web-app:latest .

3. Deploy to Kubernetes using Helm
    helm install go-web-app ./helm

4. Continuous Integration (CI) with GitHub Actions
    This project is set up with GitHub Actions for CI. The pipeline automatically:
    - Lints the Go code
    - Builds the Docker image
    - Runs tests

5. Continuous Delivery (CD) with ArgoCD
    ArgoCD is used for GitOps-based CD. It watches the Git repository for changes
    and automatically deploys updates to the Kubernetes cluster.

    To deploy with ArgoCD:
    1. Install ArgoCD in your Kubernetes cluster following the guide:
       https://argo-cd.readthedocs.io/en/stable/getting_started/
    2. Configure ArgoCD to watch the repository and sync the application.x