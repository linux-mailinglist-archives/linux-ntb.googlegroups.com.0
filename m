Return-Path: <linux-ntb+bncBDGNZTVZVAFRBPUB7D2QKGQEFWOZGNI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 5122F1D4390
	for <lists+linux-ntb@lfdr.de>; Fri, 15 May 2020 04:38:56 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id j23sf464796pll.16
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 19:38:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589510334; cv=pass;
        d=google.com; s=arc-20160816;
        b=CImhABRZDFkfDF00F+7NPwk51yKGk8bdOWnEfE58Nu6Z0IvIJoFcAIbh7XerT0piWo
         mC2YwCwIJRIakqo5RP0dq42SfP/bnhtkahi750kJ45t4dZh7ggBpLmAAM0c7v9Uz30BY
         bF+JX8TioR+Wlbf4Fi7AZWm8Y3OaZLOWryRgOHDW4Gdhfn1IYBb28tDqcUBzQPBxJcDx
         4Czi6KLFCKiec7X8AVLDEO83/IEt5y1yEH14VnGEaDSMwthAWXihiOxONG0gZpuPpLsm
         Dhs6N2jjCVB9vKhn2bomddgiKKf6OnLMYvs8NBEBQ+Rs/qteD89sLi3pEQVC4Q8h0jk5
         PzsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=xCIqxleMkqgFpzBi3Y7MAOI46yQgX2Ax8GeNufjRa/4=;
        b=soKlKCVgCoapATPmL49cOSZbLaTX0R3Ms4ljeIf+6OP6HT+DwrL+EQZXQNETldIAhQ
         KPobzheHnrgwBfEnr1jakHN//EHigPaGKOZ1p6ye2aDvR4H0ePkNjfZrBZqmUaXHNXWZ
         2BXBzkeLY0lHS/ghMWxTozip/XVQj5fsTocVcBrOln21a7cG23iTaLQD4dXUQUXItH4v
         GhXoYrjvKHJTRkPI666/I9kY+zf/jE5QCBWGNvXXdjmncYj2C5IFYNwCbaOo24PGGINE
         HDG5UYc1onRAYShRRZFSdHfPJaNXNEaBZ+QUacKr0rU4lZB4k14oqnJQwJ+IYVue/J/m
         voew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of robherring2@gmail.com designates 209.85.210.67 as permitted sender) smtp.mailfrom=robherring2@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xCIqxleMkqgFpzBi3Y7MAOI46yQgX2Ax8GeNufjRa/4=;
        b=aO8pvzXsk9QlY05mDHjkRacM33BH/SZLRvn27SdLinzKwp7FubQpKg0uXn8SXk04US
         HqB1RF9tYiWJYfGmpQ8VEJboKL2bPBaTPl66uM/d2xNNNk4bx3/zlEIzKGpbayFgI/zA
         y9k7rNdtJiPI8uPn/S3iIv7mQBq7I+mGi9zGaLFXL7MDzuqw/kmgv6QFD9P2J6SDaxTa
         qsmwXn+V4Yn0RxycF1me7gl4tCGupc8KkYoG2XhZ+e/giYml7r2PzMd4Ajfzirbk0KgN
         JP/7dGM6P7aqghEVwkqGTG1VxsorzRiyid4lNRnwATLFcDgWaRyGpKPHxS2nVfLr7tdt
         lhQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xCIqxleMkqgFpzBi3Y7MAOI46yQgX2Ax8GeNufjRa/4=;
        b=AWfgTmjxFx060wU9sDw7mwaITt3sjuane4VJLEc1X0f0X8jLN0vBmsqMvmOn69XrEP
         1BhS2oKokyyzvQnsxBPFBJTKnrUN5ljd3axbrWlFywahvuxJsRIsXuVEkPpivAKZ1Yua
         qD0e5sp5WFEpxFem7+ifCJRxebTedE/9Q/fUaBzoGZrBR12v2EyhhlAq/qPcK4rfNYP/
         UcrwN4AbL9iHwAf/Kj2hvZgo/XmEv1DSA1tEI9tEyOPQmrzbT61qyh/3yz6SFggFP3Og
         OCMq5pSmxORO1e9O/98xgxlLCPClji/jHjt3uWvq8PyZl7QG32IEqkks3ZutoqlFs3EF
         vHOw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533uCsYndT9xJA7ak1RJNIIcgflmO4/qtkpRbJX23h3CDEFwSCJy
	R8pC0mehv73wDcGCyU9pQfg=
X-Google-Smtp-Source: ABdhPJwNTh95OQVbMB7k4sOTWVUwWTEzy0QPdv9p2oxnsY4hXId5VPQ9gHe4titcaCYbGLNGM6I45Q==
X-Received: by 2002:a17:90a:33a7:: with SMTP id n36mr1069590pjb.126.1589510334603;
        Thu, 14 May 2020 19:38:54 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:b219:: with SMTP id x25ls261016pge.8.gmail; Thu, 14 May
 2020 19:38:54 -0700 (PDT)
X-Received: by 2002:a65:534d:: with SMTP id w13mr1132155pgr.161.1589510334020;
        Thu, 14 May 2020 19:38:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589510334; cv=none;
        d=google.com; s=arc-20160816;
        b=maXPyrgQym+BLhYPtPD9apqDRXan/dD2ieanUZv6OqiRAb8f3LAfcaRjKzqhCYRSGm
         XbCU98lcNToef2PgJ74a1Immz+ctzvIalUvdbyT/SxMBFSPWknXUaDWalRg9vVVoIufq
         fHQz1vKTkQT8aBT/yhrlcJFC/MyXtt41WcKkXoST54a834cKW9FHB3xsNeO4UQXqXA6c
         DXmE+LPgsjUf8VscEcNO1CYtITJpnJ5cNoSApBUzWbh9yHbEBjThTQj031eeucWLoPLF
         pHNvD3lxFDczxqg+CR4aJBU2LMWIz6wQ2p+AI+o0phW19X6mZX2hGDx+eUaeC/4I/JZe
         i1wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=ptFVEDg6umdMtCllBkJHixw/+OkA7uIpMhN7I/D6mxg=;
        b=QH9vgLq4shVSIDv1Z6bJ7gyLtrrr0p6XcR+AS6T/gJ1RtnPrRKh04zA1ZXJyF0bNp4
         WcDFsYgQUHfQCADxgeBo8qTgpt01CMGTuZeIhpukJ6oE9TGTLjEprPxJtsZl1OSsgtXu
         llm+I8gMDpDqGuv0f5T6xNERumGFuK/mq0nnAC8nGNtHmL9zdUPkQrS4k6uCifNQsJt/
         vAbUxNOU4c2aJV5xPrsSt4rMTNh6M4STdoOvcNGqW3lsQu8p0cuf42cg5O2DBtK0rq1w
         DsvF5uuk3RJ/vZJm8hgFSXXsz7IUu6TF61p+U8/M2OoQVQNBfjtOYkyZFkSfXbyL5yqp
         9NAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of robherring2@gmail.com designates 209.85.210.67 as permitted sender) smtp.mailfrom=robherring2@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com. [209.85.210.67])
        by gmr-mx.google.com with ESMTPS id w8si57594pjr.0.2020.05.14.19.38.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 May 2020 19:38:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of robherring2@gmail.com designates 209.85.210.67 as permitted sender) client-ip=209.85.210.67;
Received: by mail-ot1-f67.google.com with SMTP id d26so765148otc.7
        for <linux-ntb@googlegroups.com>; Thu, 14 May 2020 19:38:53 -0700 (PDT)
X-Received: by 2002:a05:6830:2378:: with SMTP id r24mr678472oth.113.1589510333173;
        Thu, 14 May 2020 19:38:53 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id d10sm239100ote.10.2020.05.14.19.38.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 May 2020 19:38:51 -0700 (PDT)
Received: (nullmailer pid 11325 invoked by uid 1000);
	Fri, 15 May 2020 02:38:50 -0000
Date: Thu, 14 May 2020 21:38:50 -0500
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-ntb@googlegroups.com, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-doc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>, linux-kernel@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>, Allen Hubbe <allenbh@gmail.com>, Tom Joseph <tjoseph@cadence.com>, Dave Jiang <dave.jiang@intel.com>, Jon Mason <jdmason@kudzu.us>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: Re: [PATCH 01/19] dt-bindings: PCI: Endpoint: Add DT bindings for
 PCI EPF NTB Device
Message-ID: <20200515023850.GA10278@bogus>
References: <20200514145927.17555-1-kishon@ti.com>
 <20200514145927.17555-2-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200514145927.17555-2-kishon@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: robh@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of robherring2@gmail.com designates 209.85.210.67 as
 permitted sender) smtp.mailfrom=robherring2@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

On Thu, 14 May 2020 20:29:09 +0530, Kishon Vijay Abraham I wrote:
> Add device tree schema for PCI endpoint function bus to which
> endpoint function devices should be attached. Then add device tree
> schema for PCI endpoint function device to include bindings thats
> generic to all endpoint functions. Finally add device tree schema
> for PCI endpoint NTB function device by including the generic
> device tree schema for PCIe endpoint function.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../bindings/pci/endpoint/pci-epf-bus.yaml    | 42 +++++++++++
>  .../bindings/pci/endpoint/pci-epf-device.yaml | 69 +++++++++++++++++++
>  .../bindings/pci/endpoint/pci-epf-ntb.yaml    | 68 ++++++++++++++++++
>  3 files changed, 179 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.yaml
>  create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-device.yaml
>  create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.yaml
> 


My bot found errors running 'make dt_binding_check' on your patch:

Traceback (most recent call last):
  File "/usr/local/bin/dt-doc-validate", line 64, in <module>
    ret = check_doc(args.yamldt)
  File "/usr/local/bin/dt-doc-validate", line 25, in check_doc
    testtree = dtschema.load(filename, line_number=line_number, duplicate_keys=False)
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 592, in load
    return yaml.load(f.read())
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/main.py", line 343, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 113, in get_single_data
    return self.construct_document(node)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 123, in construct_document
    for _dummy in generator:
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 723, in construct_yaml_map
    value = self.construct_mapping(node)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 440, in construct_mapping
    return BaseConstructor.construct_mapping(self, node, deep=deep)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 257, in construct_mapping
    if self.check_mapping_key(node, key_node, mapping, key, value):
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 295, in check_mapping_key
    raise DuplicateKeyError(*args)
ruamel.yaml.constructor.DuplicateKeyError: while constructing a mapping
  in "<unicode string>", line 5, column 1
found duplicate key "properties" with value "{}" (original value: "{}")
  in "<unicode string>", line 17, column 1

To suppress this check see:
    http://yaml.readthedocs.io/en/latest/api.html#duplicate-keys

Duplicate keys will become an error in future releases, and are errors
by default when using the new API.

Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/pci/endpoint/pci-epf-device.example.dts' failed
make[1]: *** [Documentation/devicetree/bindings/pci/endpoint/pci-epf-device.example.dts] Error 1
make[1]: *** Waiting for unfinished jobs....
Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.yaml: while constructing a mapping
  in "<unicode string>", line 5, column 1
found duplicate key "properties" with value "{}" (original value: "{}")
  in "<unicode string>", line 17, column 1

To suppress this check see:
    http://yaml.readthedocs.io/en/latest/api.html#duplicate-keys

Duplicate keys will become an error in future releases, and are errors
by default when using the new API.

Traceback (most recent call last):
  File "/usr/local/bin/dt-mk-schema", line 34, in <module>
    schemas = dtschema.process_schemas(args.schemas, core_schema=(not args.useronly))
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 554, in process_schemas
    sch = process_schema(os.path.abspath(filename))
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 507, in process_schema
    schema = load_schema(filename)
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 123, in load_schema
    return do_load(os.path.join(schema_basedir, schema))
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 108, in do_load
    return yaml.load(tmp)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/main.py", line 343, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 113, in get_single_data
    return self.construct_document(node)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 123, in construct_document
    for _dummy in generator:
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 723, in construct_yaml_map
    value = self.construct_mapping(node)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 440, in construct_mapping
    return BaseConstructor.construct_mapping(self, node, deep=deep)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 257, in construct_mapping
    if self.check_mapping_key(node, key_node, mapping, key, value):
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 295, in check_mapping_key
    raise DuplicateKeyError(*args)
ruamel.yaml.constructor.DuplicateKeyError: while constructing a mapping
  in "<unicode string>", line 5, column 1
found duplicate key "properties" with value "{}" (original value: "{}")
  in "<unicode string>", line 17, column 1

To suppress this check see:
    http://yaml.readthedocs.io/en/latest/api.html#duplicate-keys

Duplicate keys will become an error in future releases, and are errors
by default when using the new API.

Documentation/devicetree/bindings/Makefile:41: recipe for target 'Documentation/devicetree/bindings/processed-schema-examples.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/processed-schema-examples.yaml] Error 123
make[1]: *** Deleting file 'Documentation/devicetree/bindings/processed-schema-examples.yaml'
Traceback (most recent call last):
  File "/usr/local/bin/dt-mk-schema", line 34, in <module>
    schemas = dtschema.process_schemas(args.schemas, core_schema=(not args.useronly))
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 554, in process_schemas
    sch = process_schema(os.path.abspath(filename))
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 507, in process_schema
    schema = load_schema(filename)
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 123, in load_schema
    return do_load(os.path.join(schema_basedir, schema))
  File "/usr/local/lib/python3.6/dist-packages/dtschema/lib.py", line 108, in do_load
    return yaml.load(tmp)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/main.py", line 343, in load
    return constructor.get_single_data()
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 113, in get_single_data
    return self.construct_document(node)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 123, in construct_document
    for _dummy in generator:
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 723, in construct_yaml_map
    value = self.construct_mapping(node)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 440, in construct_mapping
    return BaseConstructor.construct_mapping(self, node, deep=deep)
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 257, in construct_mapping
    if self.check_mapping_key(node, key_node, mapping, key, value):
  File "/usr/local/lib/python3.6/dist-packages/ruamel/yaml/constructor.py", line 295, in check_mapping_key
    raise DuplicateKeyError(*args)
ruamel.yaml.constructor.DuplicateKeyError: while constructing a mapping
  in "<unicode string>", line 5, column 1
found duplicate key "properties" with value "{}" (original value: "{}")
  in "<unicode string>", line 17, column 1

To suppress this check see:
    http://yaml.readthedocs.io/en/latest/api.html#duplicate-keys

Duplicate keys will become an error in future releases, and are errors
by default when using the new API.

Documentation/devicetree/bindings/Makefile:45: recipe for target 'Documentation/devicetree/bindings/processed-schema.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/processed-schema.yaml] Error 123
make[1]: *** Deleting file 'Documentation/devicetree/bindings/processed-schema.yaml'
Makefile:1300: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1290443

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200515023850.GA10278%40bogus.
