Return-Path: <linux-ntb+bncBDXJDZXNUMORBIGMTSAAMGQE4FGCV6Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 068A52FBF0F
	for <lists+linux-ntb@lfdr.de>; Tue, 19 Jan 2021 19:34:10 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id o20sf12931420pgu.16
        for <lists+linux-ntb@lfdr.de>; Tue, 19 Jan 2021 10:34:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611081248; cv=pass;
        d=google.com; s=arc-20160816;
        b=OWdye14ogGqilBVBKSYwRSrW13sCJ0Qw+RPeX7ErWq/9UHbMldXKcKNv8ambjRPh5+
         p17LNbL0dxKGEscexh+6gkpDUUQ3oabtY+mgmQvto6qBwWiyFzbtPWKuR9vpW12bAloI
         /wFlXm5TlRmjo8aNNNLDRXFjxDUqAcfJLjxDK7dkwNQFy7Owx9yMNJoZTU27jcmZAcq0
         J2wg8uNXbZJwsBnQ9ex7KZFWx92pMTAKOvuphpYQI/DZycB+ulJe/HYTsizxNsrGPPeC
         /j8nY6Qq0ot9vHb8MQNl9Hw5xkjV9ln831SMPxyndNHajhknfTGEpa2Rdq6lou8d3AwD
         dNmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Q40uOqzprgEHrrlzm86N9eevwlf+gb0Gg/anw0YEKlQ=;
        b=RM6ZMOmMpY6wxEV/vIsK6d+9V/MQAq7+ZeKrlU080ykdrrcD01H98etz+d5Ejo9aXj
         AWLlV8NRBWyrNQZ496I0TfvauBjjh2ImOl69XUhVlyf3AHobchJEj7iXwPXeNNDeL9AT
         mkZOjp/WMC4cQHRjE6mLbrNtk8jgLd3nESo5W3lFAb8Ce2CJAebwgOPyqOs2jsmuBfZ7
         RL5A8db+2lRH5LpKhN0NZs5gpQJ+QsgidWEfjfblcbKvlsycsV2uM7tYlhz0P0yb0Gf0
         t/kSC1I6dicxDUjsVI9t/Zl/DR4snMI9WebT4zNQhffos+LkjJ5MtjsaytGZ6ojP56Uk
         K9Yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=REX6epqL;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q40uOqzprgEHrrlzm86N9eevwlf+gb0Gg/anw0YEKlQ=;
        b=NuEP+7JagD2DWQ9lve1Q8oLlDFH47FkalijTc86fKDkcRx0AXVvFT3EVFZ5Rp4hLIB
         i5fn7PFsYRqPpAlMomZv/g1Gssp+VCEgL18AHiyMRrwWmM8Ds03L3I9aM5FhA1ZXgT6e
         PzC2gva8v63uJYiKBGqvEhCvwpoJhFq/FyJ4BVxi/KRm4DEV0gy5f0N8M9FN21mTMo51
         +Xgej7pcUZ3uldiSIgZuXcJdp0SbAOtAjRt3VJ5GnCzfPUyr7/TlFzEl4Z2zg7WwjhAH
         C1w2X0kb2jSM6J7XsMjl/3Ydeo5fvv6DLL+dpdF/80zGA3wueK/pFzSedDRn2pzvD8sc
         QT/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q40uOqzprgEHrrlzm86N9eevwlf+gb0Gg/anw0YEKlQ=;
        b=HIkvNSf+SFTnxRs2j6kn6QnsHydsrcRTdhVjzoMfQIUzyViIlsQCsOI132bvnc24nI
         2BLJdhF35mnM0Ukti2OfCy802yV4oYdB3n8nHFVc8a2H1oplLrl94VSVPBjCSVPNemYz
         RuxCPui9DcpnO5Y9wUs6ezXaeswpZaKLvkX/t1xIw8I8w4bNuwKhvFwNQ83+wsL7ndCb
         R4atPGq4zQoqXYMsksZeMJVN35rC5TzqM6o7GiMee+9En4PAh6t+W/Lh03fmciZwTyGU
         Uiu0zMTseNqkm0g/pvKOHMSQNlRL2QM8SSWHm5KA+ynsK/OMaFaC7UEyLyqIkZMhzi2w
         jP1A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530RtWDwAvpXKDyXspLPM3dGDYp6wMNBwLf4Nj8NlM8uAr8+yED8
	Qs+N/ujxxsc6Yg8H1MxSQJc=
X-Google-Smtp-Source: ABdhPJxqKxj92RXQAGrwe9cxcAxOG1/MDnX9SwOd96+ZEuwTzPTTFGHF1Apih4h43cEfkz4yzs0Xhw==
X-Received: by 2002:a63:db0d:: with SMTP id e13mr5556481pgg.343.1611081248395;
        Tue, 19 Jan 2021 10:34:08 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:4704:: with SMTP id u4ls7994316pga.0.gmail; Tue, 19 Jan
 2021 10:34:07 -0800 (PST)
X-Received: by 2002:a63:4b16:: with SMTP id y22mr5541780pga.203.1611081247753;
        Tue, 19 Jan 2021 10:34:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611081247; cv=none;
        d=google.com; s=arc-20160816;
        b=Den6Akkzo2OMJRVy3Y+lVhP9VDFcKeH7jkwwFxiQOGprElF1H6VchKCoUhJ16z6LVR
         ZeWTUmdQruLKplVOFX7xUyqLY9uYqAgKgKZWzNoeOo5yOkanhl5LZhI201K3Av9baOSI
         HjJXPCpqQk2vRyE8PO29Xoj+4Z1AJdwZEL+6xQ1iKMXjgll/5LyC60XgbEN7rYb00fLT
         FCFy8i7bHkYkMDdPlQBwdAqxYlXRoj9wv3FJw3C9yHMLSsUrUMMNoHnK1rrCXK3FNjbW
         3e0KzXAyieQ8jC5ZHr/x6Ju0SHT9XqqfpHDhgP7NjMt6TByAt2Y5FRIEg0yKnTCHeIwb
         j2+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=7ewuk/NqpEs84mitbAnKBum6l7UBVe2XNrv7Ma7yZ9w=;
        b=BmLctkqXcwtkDSvvAjSbp2ihBzrPLeB1EnaqvRUGefByR+vLVT5/J1TapDrsqbP4JE
         UnzVHMFaMTWkkidyQA1+h5sw0rUG1stGqBj7+/gOwdekpvtT1aaw1mqYi4KxA7Qt3uxg
         WwZt9jKqPbpcsgCh1jq+AO+mLPaAln5J+gWA/rbLuJl9YC2St+Pu7USsNTFsI3/f0yb8
         7/03sSdb7SpBvQlIAHDLVyIUaLK+IWxBqC984RbQU9QYXm2lAevaQb7YO7sLJWp4yfx6
         6JWaAwFRa3kzcqcBoVZmz1Ck7/CQbyzx8yiML3lgiJZay0rJzPYbW6HF4kHWNEE9vr+M
         9+kQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=REX6epqL;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d2si1749100pfr.4.2021.01.19.10.34.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Jan 2021 10:34:07 -0800 (PST)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1E40022E00;
	Tue, 19 Jan 2021 18:34:07 +0000 (UTC)
Date: Tue, 19 Jan 2021 12:34:05 -0600
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
Message-ID: <20210119183405.GA2496684@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210104152909.22038-11-kishon@ti.com>
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=REX6epqL;       spf=pass
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

[cc->to Greg]

On Mon, Jan 04, 2021 at 08:59:02PM +0530, Kishon Vijay Abraham I wrote:
> Documentation/PCI/endpoint/pci-endpoint-cfs.rst explains how a user
> has to create a directory in-order to create a 'EPF Device' that
> can be configured/probed by 'EPF Driver'.
> 
> Allow user to create a sub-directory of 'EPF Device' directory for
> any function specific attributes that has to be exposed to the user.

Maybe add an example sysfs path in the commit log?

Seems like there's restriction on hierarchy depth in sysfs, but I
don't remember the details.  Moved Greg to "to" in case he wants to
comment.

> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/pci/endpoint/pci-ep-cfs.c | 23 +++++++++++++++++++++++
>  include/linux/pci-epf.h           |  3 +++
>  2 files changed, 26 insertions(+)
> 
> diff --git a/drivers/pci/endpoint/pci-ep-cfs.c b/drivers/pci/endpoint/pci-ep-cfs.c
> index 8f750961d6ab..f3a8b833b479 100644
> --- a/drivers/pci/endpoint/pci-ep-cfs.c
> +++ b/drivers/pci/endpoint/pci-ep-cfs.c
> @@ -490,7 +490,29 @@ static struct configfs_item_operations pci_epf_ops = {
>  	.release		= pci_epf_release,
>  };
>  
> +static struct config_group *pci_epf_type_make(struct config_group *group,
> +					      const char *name)
> +{
> +	struct pci_epf_group *epf_group = to_pci_epf_group(&group->cg_item);
> +	struct config_group *epf_type_group;
> +
> +	epf_type_group = pci_epf_type_add_cfs(epf_group->epf, group);
> +	return epf_type_group;
> +}
> +
> +static void pci_epf_type_drop(struct config_group *group,
> +			      struct config_item *item)
> +{
> +	config_item_put(item);
> +}
> +
> +static struct configfs_group_operations pci_epf_type_group_ops = {
> +	.make_group     = &pci_epf_type_make,
> +	.drop_item      = &pci_epf_type_drop,
> +};
> +
>  static const struct config_item_type pci_epf_type = {
> +	.ct_group_ops	= &pci_epf_type_group_ops,
>  	.ct_item_ops	= &pci_epf_ops,
>  	.ct_attrs	= pci_epf_attrs,
>  	.ct_owner	= THIS_MODULE,
> @@ -553,6 +575,7 @@ static struct config_group *pci_epf_make(struct config_group *group,
>  		goto free_name;
>  	}
>  
> +	epf->group = &epf_group->group;
>  	epf_group->epf = epf;
>  
>  	kfree(epf_name);
> diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
> index b241e7dd171f..6833e2160ef1 100644
> --- a/include/linux/pci-epf.h
> +++ b/include/linux/pci-epf.h
> @@ -9,6 +9,7 @@
>  #ifndef __LINUX_PCI_EPF_H
>  #define __LINUX_PCI_EPF_H
>  
> +#include <linux/configfs.h>
>  #include <linux/device.h>
>  #include <linux/mod_devicetable.h>
>  #include <linux/pci.h>
> @@ -128,6 +129,7 @@ struct pci_epf_bar {
>   *   EPC device
>   * @sec_epc_bar: represents the BAR of EPF device associated with secondary EPC
>   * @sec_epc_func_no: unique (physical) function number within the secondary EPC
> + * @group: configfs group associated with the EPF device
>   */
>  struct pci_epf {
>  	struct device		dev;
> @@ -150,6 +152,7 @@ struct pci_epf {
>  	struct list_head	sec_epc_list;
>  	struct pci_epf_bar	sec_epc_bar[6];
>  	u8			sec_epc_func_no;
> +	struct config_group	*group;
>  };
>  
>  /**
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210119183405.GA2496684%40bjorn-Precision-5520.
