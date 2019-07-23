# Terraform WordPress deployment

## 内容:

このTFスクリプトはStratoscale Cloud PlatformにVPC,EC2,RDSを使った高可用性のWordPressサイトを展開するものです。

## Description:

This TF script will deploy a single region highly available WordPress site with RDS, EC2 and VPC into Stratoscale Symphony. 

## 実行する前に

.tfvarsファイルに利用するアカウントのAPIの認証情報と、利用するAMIイメージのIDが必要になります。
 作成済みのterraform.tfvarsファイルを参考にしてください。AMIイメージには`cloud-ready Ubuntu Xenial`のイメージを使ってください。
Xenialの最新のcloud imageはこちら。
 https://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-disk1.img

## Before running
Along with your API credentials, ensure you specify the AMI ID in your .tfvars file. A sample has been created to reference. Please use a cloud-ready Ubuntu Xenial image. For list of official AMI's see: https://cloud-images.ubuntu.com/locator/ec2/.

### プロビジョニングされるネットワーク:

- 1 VPC 
- 2 Database サブネット 
- 1 Web サブネット
- 2 public サブネット

### Networks to be provisioned:

- 1 VPC 
- 2 Database subnets 
- 1  Web subnets 
- 2  public subnets 

### プロビジョニングされるリソース:

- 1 NLB
- 2 Webサーバ (変更可能) (Ubuntu Xenial)
- 1 RDSインスタンス(MySQL 5.7)

### Resources:
- 1 NLB
- 2 web servers (or more) (Ubuntu Xenial)
- 1 RDS instance (MySQL 5.7)

### Stratoscale Cloud Platform 事前セットアップ要件:

- UIからロードバランサを有効化して初期化されてること
- Ubuntu Xenial cloud-readyイメージをパブリックとしてアップロード済みであること
- RDSが有効化されてMysql 5.7エンジンが初期化されてること
- 利用するプロジェクトでVPCが有効化されていること

### Stratoscale Symphony Requirements:
- Load balancing enabled and initialized from the UI
- Ubuntu Xenial cloud-ready image uploaded and set as Public 
- RDS Enabled with Mysql 5.7 engine initialized
- VPC mode enabled for tenant project

### Tested with: Terraform v0.11.7

