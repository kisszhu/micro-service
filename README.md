[TOC]

# micro-service

## 微服务项目结构

### interfaces

`接口层`

**DTO**

`数据传输对象`

**Assembler**

`DTO与领域对象的转换类`

**Facade**

`为复杂子系统提供粗力度接口`

### application

`服务层`

在领域驱动设计的架构里，application是非常"薄"的一层，所有的service只负责协调并委派业务逻辑给领域对象进行处理，其本身并没有太多的业务逻辑，绝大部份的业务逻辑都由领域对象实现了

这是区别系统是Transaction Script还是Domain Model架构的重要标志

### domain

`领域层`

domain层包含Entity、ValueObject、Domain Event、Repository等

### infrastructure

`基础设施层`

作为基础设施层，infrastructure为Interfaces、Application和Domain三层提供支撑。所有与具体平台、框架相关的实现会在infrastructure中提供。infrastructure中最常见的一类设施是对象持久化的具体实现

## 微服务技术选型



## To B定制与定制
避免定制化开发