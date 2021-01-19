Return-Path: <linux-ntb+bncBDXJDZXNUMORB2WMTSAAMGQECNHUWOQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 346552FBF15
	for <lists+linux-ntb@lfdr.de>; Tue, 19 Jan 2021 19:35:23 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id r1sf11438868ybd.23
        for <lists+linux-ntb@lfdr.de>; Tue, 19 Jan 2021 10:35:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611081322; cv=pass;
        d=google.com; s=arc-20160816;
        b=S38oRB1qPRAxuQER1yY+QT7RZQhfo/0i0uuKamPfPbVDfzUSXwBrz+7M+9HT6gxbGW
         c1UCpNyK8iED/Fzp5YZoGrH8QlZANR9Ar0HUZQsgCt9ygHaUAQvTURy9nK9HPlqfomrT
         WHk5SWhIfbqiCn5H4S4b45VPqhNkEegOWPPIk8KZtzjgG/r2QGn1OVdonDDehB+P2MQt
         lsZ2QOQcjxB6agWDOOMwzrMvak08Hga8pfhRSLdNQKVGinn+dIuov/2g669o/7Ng3VYV
         DMcV4YnX4TX0ieKsSiaqSKAxJncRUS5NJOe7rGgjL4HlDz3e7Fvg9u4rjtZU5f6BgRJp
         NDmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KYOtZ3QnJEhGnQXkCcBX/zXy/HaW53dna6H20IDAf+g=;
        b=inmbrr6MU6JsA1D34U7VOMDXF6jQ3RS3xjz+ykVEHy8BkM9NHvFj/qY0ZjVzt6qjeV
         DnksMQXs0rzZ701xlmTMvd7aOSG8xAaNHrJTn3IRvaa8V8+diJy5349QWXUUqHuOvG7a
         0YNtw1knnTyVHp6BOlGlGCbY1bMrytmPuErzmz4TR0QSdfsoZ4dNZBSlQO3ljZXx+P7c
         abHy4SBGdMp42Y7Et6LuLmU9lVIGhgSStA2mqwkGCEaxAILmM5NnNi8aIvEf+FMXWIfx
         PELlcV2Qi7dg8qlRDPtT4IJzef4uavYMTn0tNIX1VqIF6wbGgryPGho1oI2Ag0jeBa2/
         RH1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=m9Hrqfp5;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KYOtZ3QnJEhGnQXkCcBX/zXy/HaW53dna6H20IDAf+g=;
        b=TTSEmEXIBdAFPTLrlPeb1fKNHUpKWwsFbpM2r82Mlp+7f6xb2oeKNkU20OJN0EcevC
         5WPduRMwSGha8Qa17yjuFc2YqqiFxkBR9DANyU4Ai0FA6OTIovwgd73PacLETcEqUftr
         qYZwqb+psyLZYkLo1G91FOhYUz6dcyJOC43D0jLJn/Z6fO3rPRrNNxVi5ILIMSh0K9/C
         pUxCOJr/h7ADb7RuGQtX8LtEdV1MbOoPRwddXVlpXdbRky+SgSz5XSDayI0rAsMnUdEF
         OpM5+2ZE+ILr9ptRdEdIOi2JhrI+46SL3y4wGGYqgGle7GIH2VWYmbk21imNKz4ttUYQ
         Rw/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KYOtZ3QnJEhGnQXkCcBX/zXy/HaW53dna6H20IDAf+g=;
        b=l8zQjqhPK+ZaZ5QCVEgxwOb6ehRFhigPpBm3o/F2g/sDi3RN69Mlhv4uQYVRcOrQJV
         7NTaCUzzADB3QtednTa+m/xLmcNwYL/cb1gBGIaYKRw9HlQlMAgSJlk3iJnA3Zu+qma2
         D7O4VIqiogzQ7JtlAAJkdGqPjP8ghSM/cl3QBnsZzbPSFovhKP8KeWGxXmdk3bSNltTa
         XoYODc5DjRdBNhuIqW+pqiGYP0LrRrgx1y/XpdJmTHLSiaQVtZ+PTlKnZ/FYTtuU7al/
         64f8/hnKK62WgdtH37xig9VGNxdzPqdNvIktxfy43WNB/Ry105cAsSRwJDtniCOxqbVd
         nhww==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532BualhvRjcyPvzpux1qTZG1wHyeucf4dnq7kK134FRASMVSyFi
	s8h09PRsbnqOxPH/gxqBZxk=
X-Google-Smtp-Source: ABdhPJzeJtOgxFruptEgOo+FrWoZlvV0xD7z+0O9PzqhsM50WP4GJYCLcXb0+UHkVqcG33ObgcffoQ==
X-Received: by 2002:a25:743:: with SMTP id 64mr7510412ybh.333.1611081322255;
        Tue, 19 Jan 2021 10:35:22 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:7314:: with SMTP id o20ls9228996ybc.0.gmail; Tue, 19 Jan
 2021 10:35:21 -0800 (PST)
X-Received: by 2002:a25:e0b:: with SMTP id 11mr8220069ybo.163.1611081321905;
        Tue, 19 Jan 2021 10:35:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611081321; cv=none;
        d=google.com; s=arc-20160816;
        b=nD8p12fSn6Q90EZP59hPkLh7fYsGl/YJcbJUQRzDB5b8RG04bci2Qx6srM3qceddMO
         fMmOXgL9MpEa68msFiS44K1QPFehfwucMfNm8SfHrVaedaN+1VbLMA/Gr0U26CuJ0+1I
         /IJU2H+ppWcc+iDg/pEFlOQ1lfsmktIwRKe26JZJPzF2UtCFDQ+CZpq82cQBu/nvreMk
         O4T/OTgzZI4MVr1AbdrD3UZjtAf/k3tUUUZ/0x7hOx25lU62UCGCCVazxbgXojALBe5u
         HyB0WEZYu85wGvzllxio5OzYssE/PpXZk5rLMF6PvjICqaevaNZcWrTcqoDbBx+tyKAC
         64iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=6KmxNK/wKvTPpiGXZYAGduoqgf4DGOHfdwvoc/y6CP0=;
        b=sN4TH+PmD8fuQrYhSokeBZcbyLR/a+XQtp8/+auCdNw0+PgGXHDI5j/IWDfNi7pl4x
         oR4ipuKL589edOswJuI9JhqNhCnp1ef4kmqBT6IZMUELkcpr3S6/9l4amPj84gMEnSmz
         Rz9bZg13oWr4Z6BnP+uyL+GVb/llpKJy3R4vMgfaXHUfoLGBXgHgq2RDhyQvMoqCYosm
         0mZKLyiE4WyPuC5qWbG/i/aDGYgObQ8afVECFR8CDwf5lrGpti19P8ygXRMKI2DO1Zjq
         jEqlxmP4iWah51H/lt4f7mZjWnYtaaeNwaX0JqigyyUhiIatBlKHF4U3AB+0fI229aCa
         aeDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=m9Hrqfp5;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k19si1922516ybj.5.2021.01.19.10.35.21
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Jan 2021 10:35:21 -0800 (PST)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8F19C22CAD;
	Tue, 19 Jan 2021 18:35:20 +0000 (UTC)
Date: Tue, 19 Jan 2021 12:35:19 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Arnd Bergmann <arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh@kernel.org>,
	linux-pci@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: Re: [PATCH v9 10/17] PCI: endpoint: Allow user to create
 sub-directory of 'EPF Device' directory
Message-ID: <20210119183519.GA2496938@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210119183405.GA2496684@bjorn-Precision-5520>
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=m9Hrqfp5;       spf=pass
 (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=helgaas@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Jan 19, 2021 at 12:34:07PM -0600, Bjorn Helgaas wrote:
> [cc->to Greg]
> 
> On Mon, Jan 04, 2021 at 08:59:02PM +0530, Kishon Vijay Abraham I wrote:
> > Documentation/PCI/endpoint/pci-endpoint-cfs.rst explains how a user
> > has to create a directory in-order to create a 'EPF Device' that
> > can be configured/probed by 'EPF Driver'.
> > 
> > Allow user to create a sub-directory of 'EPF Device' directory for
> > any function specific attributes that has to be exposed to the user.
> 
> Maybe add an example sysfs path in the commit log?
> 
> Seems like there's restriction on hierarchy depth in sysfs, but I
> don't remember the details.  Moved Greg to "to" in case he wants to
> comment.

Oh, I see this is for *configfs*, not for *sysfs*.  Sorry for the
noise.

> > Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> > ---
> >  drivers/pci/endpoint/pci-ep-cfs.c | 23 +++++++++++++++++++++++
> >  include/linux/pci-epf.h           |  3 +++
> >  2 files changed, 26 insertions(+)
> > 
> > diff --git a/drivers/pci/endpoint/pci-ep-cfs.c b/drivers/pci/endpoint/pci-ep-cfs.c
> > index 8f750961d6ab..f3a8b833b479 100644
> > --- a/drivers/pci/endpoint/pci-ep-cfs.c
> > +++ b/drivers/pci/endpoint/pci-ep-cfs.c
> > @@ -490,7 +490,29 @@ static struct configfs_item_operations pci_epf_ops = {
> >  	.release		= pci_epf_release,
> >  };
> >  
> > +static struct config_group *pci_epf_type_make(struct config_group *group,
> > +					      const char *name)
> > +{
> > +	struct pci_epf_group *epf_group = to_pci_epf_group(&group->cg_item);
> > +	struct config_group *epf_type_group;
> > +
> > +	epf_type_group = pci_epf_type_add_cfs(epf_group->epf, group);
> > +	return epf_type_group;
> > +}
> > +
> > +static void pci_epf_type_drop(struct config_group *group,
> > +			      struct config_item *item)
> > +{
> > +	config_item_put(item);
> > +}
> > +
> > +static struct configfs_group_operations pci_epf_type_group_ops = {
> > +	.make_group     = &pci_epf_type_make,
> > +	.drop_item      = &pci_epf_type_drop,
> > +};
> > +
> >  static const struct config_item_type pci_epf_type = {
> > +	.ct_group_ops	= &pci_epf_type_group_ops,
> >  	.ct_item_ops	= &pci_epf_ops,
> >  	.ct_attrs	= pci_epf_attrs,
> >  	.ct_owner	= THIS_MODULE,
> > @@ -553,6 +575,7 @@ static struct config_group *pci_epf_make(struct config_group *group,
> >  		goto free_name;
> >  	}
> >  
> > +	epf->group = &epf_group->group;
> >  	epf_group->epf = epf;
> >  
> >  	kfree(epf_name);
> > diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
> > index b241e7dd171f..6833e2160ef1 100644
> > --- a/include/linux/pci-epf.h
> > +++ b/include/linux/pci-epf.h
> > @@ -9,6 +9,7 @@
> >  #ifndef __LINUX_PCI_EPF_H
> >  #define __LINUX_PCI_EPF_H
> >  
> > +#include <linux/configfs.h>
> >  #include <linux/device.h>
> >  #include <linux/mod_devicetable.h>
> >  #include <linux/pci.h>
> > @@ -128,6 +129,7 @@ struct pci_epf_bar {
> >   *   EPC device
> >   * @sec_epc_bar: represents the BAR of EPF device associated with secondary EPC
> >   * @sec_epc_func_no: unique (physical) function number within the secondary EPC
> > + * @group: configfs group associated with the EPF device
> >   */
> >  struct pci_epf {
> >  	struct device		dev;
> > @@ -150,6 +152,7 @@ struct pci_epf {
> >  	struct list_head	sec_epc_list;
> >  	struct pci_epf_bar	sec_epc_bar[6];
> >  	u8			sec_epc_func_no;
> > +	struct config_group	*group;
> >  };
> >  
> >  /**
> > -- 
> > 2.17.1
> > 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210119183519.GA2496938%40bjorn-Precision-5520.
