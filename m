Return-Path: <linux-ntb+bncBAABB7HAZHXAKGQEM4JX6HY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id F07D3100243
	for <lists+linux-ntb@lfdr.de>; Mon, 18 Nov 2019 11:20:47 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id h15sf9866814otr.11
        for <lists+linux-ntb@lfdr.de>; Mon, 18 Nov 2019 02:20:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574072446; cv=pass;
        d=google.com; s=arc-20160816;
        b=wwDWfmbFe9JhNuHIdbfUGbeoCik5dUjPY2d8rWtm+R0q+JnViY7rRni2kCpEW1+EMy
         LBTQszb8icxTe+QaELrw2NLpgDJDm5d+qB8uMkg4FEw9gf9VTuivytuHPODPiVZL8B0e
         U4dalCN7NdQbufB8s+46Z5oElj6pDJ3XD7zMgFfbhbtfCt1uVKycpUjT5TNGWj+uHy/g
         EqmnSXOBguOU6syaWbzd5nrl+iXdWQAXeEozI9fJB69HYQkoNGy+qCKMpdOnh0BbU+bA
         Eyy1+iyeEne0V5ynbHbxoHONWA2+luW34d8ZolZKOONjLH7eirrgLJOAFHerIDH4x3w5
         1ymA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=NHEP5RMJ1ebVvaraVVMhq8eFOy83R8NSxefkocmU96Q=;
        b=YXcC3z6Zl/mCAxgQnoCUoNKW3E2RCNuc9F+30R8+tzWj27PyJkLa5MMkL3r+qND9x7
         ExNK6yKqxWou4zP8ugAXt2zC9ReFTx2pUUXuB3mq+bPgI2T06Af8Veey3ttoc6tmT3zS
         11RdsaJivcQFMraAtCOfrpZy+1IJ9RlDCraEaZ5RJR/ryYlw+GbpKflGWPnsUONm9W/m
         vx3n5nLRvOFMzwAywlunAA8FG60JEPHqyaDxLY5cMKNJTDvQDBRXm5SosHZjUmS+gHBN
         kg+N/HH8MgCYSsqwF3IENY/5XHUXvr0cQllmmZOYC/tjx2Bw6HSZ5JhWsjL4CpaBOdAR
         RFGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NHEP5RMJ1ebVvaraVVMhq8eFOy83R8NSxefkocmU96Q=;
        b=Kj9ZsXibTDkN0q2xBdo0m5HNaglQVhSAl3s1fL277TE9SfodkwXqoVv5xQxa6+h7QE
         n5BVS1cSXi+uP0AmWFLkoEff/hAUMBLSfxWk1eXmcX8TXMlUHRnBJN/ySXf6rRsKiQPb
         FZgH2tx9RJVrfVf0BLfBpUQwVAxqnVy/gj7ZuWUVhi8CSselg4xiv538KL4ofhwxWmfm
         yrywFlduU/OvVFGTgY89xLruf6DREE4QxaYA32aGu/UEuk4m7xKqmivz3GV+5Rl4vtwn
         qrFqfpEs3O7HE3fCgWooG3FrWcsedbQ6DeveFiMGCbA0AO05Yp3pBHAMqHhYedmmZYZd
         FiNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NHEP5RMJ1ebVvaraVVMhq8eFOy83R8NSxefkocmU96Q=;
        b=gMHqWLr/xam/HGvKDKdxxjv08JOisv9UEmDEeGeULdkbckyiWLVXQroItvUy/UfCDo
         8h0qQ/YdszzM0nlTsx7VmycK2JnAcuLkcQHPOX/MHYAy0apX4ZyRDcWjBIiYaxRQeGDn
         BpYSTUo3nKHG1ChHJr0akI1lCj836ss460Wtifdrppk4d+izFEMnYhqB20QisZnC1GrR
         YwZuuIWnVHWT6syZP2DXp3NpNfZ+EQYO1QCRmNKRr+SmxdJgdwYWvNGXcfOtmtag16ZW
         4vwzRnYlFPJDfQ5dGJdzSjKJ2P4/YyIE9dD6diWAecxOnBpWb9MkMTRIo5nrQQHY6a2X
         3LpA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVRcOp4ckHvZnDo94/r8p+AcRvi0Fo+FPnMtw1p4gpv4Sc9UZOl
	5deFD8MwL/U/9a59ojb1+dA=
X-Google-Smtp-Source: APXvYqzt99+baMnPnkOX6FsLacT1Dsz2760RNtZ6+NkWBw+6OVZZqkWLvinnoET/RIq5fr5NOuBRFg==
X-Received: by 2002:a9d:469d:: with SMTP id z29mr18466832ote.309.1574072444452;
        Mon, 18 Nov 2019 02:20:44 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:2c1:: with SMTP id a1ls4254472oid.5.gmail; Mon, 18
 Nov 2019 02:20:44 -0800 (PST)
X-Received: by 2002:a05:6808:a0c:: with SMTP id n12mr19845231oij.16.1574072444148;
        Mon, 18 Nov 2019 02:20:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574072444; cv=none;
        d=google.com; s=arc-20160816;
        b=epKLFIX+4w267f8ZhxLrrJnv+nbWnPw2ev3ny971oY4JWu6rNBEwyCh56yFUWhXn5V
         pBMK37GxKUMCvRsn0I9x61hA83msyfSj+P9nY51rI0PkXv9Ah+jgWryJVOva8d76cWzQ
         /OQdZ05et6KrVkQwE66IFCyWE6rmjn/41RPGte8B81JLNu9Qw3tE3HinOJOigz6pZ15e
         MV4mp+nLiPe0dXJkrk6YrSMF9APXljVnpq0CCBUhQ0bPyBET3viWVBO/2+wp3/rymJJM
         VtQAXP8l93dx4ARjBBdmLP+xsBi2pxpm/miG0oBEd05ttrjaLBC3UijGT0Qq3f34ChPx
         z4CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=4fFGbbmJSsJDE/UYgH0ePHRqLQ/gGGqveSqqhIRcvrg=;
        b=ORkJSlQVyJP/Y/S5TGyK2vPHK9NJS9KJnwkCSSJPB8kcRf9xNn3X0RQhdztqfXslYn
         49ttQoGlvtfpLBNnbYPb8vwvVS8LuR4pD092DOipsCNafTrtbOofXGTdXJMigOCttU46
         VdGeC+iseu49k9h+bEQNUfIZSr7xVHyG7DbircGalVDsz6IBQF+9yXbYGKxEb5BeZIxX
         bPQLCM66lM0mUwPdlNyllUhIpiaM6GCDNrn7X2dV0jv8BxzHX3UfVXRsYdDEbI6GlUcD
         xZX0GiNzuqBqmpN4Xt2jw+zOESaHSFs/eiNt7bUyrm1IQ4shOIbijBuO6yGkt+5E8iq9
         04tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
Received: from spam1.hygon.cn ([110.188.70.11])
        by gmr-mx.google.com with ESMTPS id 5si562419otu.2.2019.11.18.02.20.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Nov 2019 02:20:42 -0800 (PST)
Received-SPF: permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) client-ip=110.188.70.11;
Received: from MK-FE.hygon.cn ([172.23.18.61])
	by spam1.hygon.cn with ESMTP id xAIAKXCl085098;
	Mon, 18 Nov 2019 18:20:33 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from cncheex01.Hygon.cn ([172.23.18.10])
	by MK-FE.hygon.cn with ESMTP id xAIAKNwP014116;
	Mon, 18 Nov 2019 18:20:23 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from [172.20.21.12] (172.23.18.44) by cncheex01.Hygon.cn
 (172.23.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3; Mon, 18 Nov
 2019 18:20:28 +0800
Subject: Re: [PATCH] NTB: Fix an error in get link status
To: Jon Mason <jdmason@kudzu.us>
CC: "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        linux-kernel
	<linux-kernel@vger.kernel.org>,
        linux-ntb <linux-ntb@googlegroups.com>, <linjiasen007@gmail.com>
References: <1573119336-107732-1-git-send-email-linjiasen@hygon.cn>
 <CAPoiz9wAJz=Hqb6Os=9AHHv_NGpZ8uCaAuOC=aUTkASKdfs9WQ@mail.gmail.com>
From: Jiasen Lin <linjiasen@hygon.cn>
Message-ID: <933f74c7-7249-618c-13dc-9e4e47ad75d7@hygon.cn>
Date: Mon, 18 Nov 2019 18:17:38 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAPoiz9wAJz=Hqb6Os=9AHHv_NGpZ8uCaAuOC=aUTkASKdfs9WQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [172.23.18.44]
X-ClientProxiedBy: cncheex01.Hygon.cn (172.23.18.10) To cncheex01.Hygon.cn
 (172.23.18.10)
X-MAIL: spam1.hygon.cn xAIAKXCl085098
X-DNSRBL: 
X-Original-Sender: linjiasen@hygon.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=permerror
 (google.com: permanent error in processing during lookup of
 linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
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



On 2019/11/18 7:00, Jon Mason wrote:
> On Thu, Nov 7, 2019 at 4:37 AM Jiasen Lin <linjiasen@hygon.cn> wrote:
>>
>> The offset of PCIe Capability Header for AMD and HYGON NTB is 0x64,
>> but the macro which named "AMD_LINK_STATUS_OFFSET" is defined as 0x68.
>> It is offset of Device Capabilities Reg rather than Link Control Reg.
>>
>> This code trigger an error in get link statsus:
>>
>>          cat /sys/kernel/debug/ntb_hw_amd/0000:43:00.1/info
>>                  LNK STA -               0x8fa1
>>                  Link Status -           Up
>>                  Link Speed -            PCI-E Gen 0
>>                  Link Width -            x0
>>
>> This patch use pcie_capability_read_dword to get link status.
>> After fix this issue, we can get link status accurately:
>>
>>          cat /sys/kernel/debug/ntb_hw_amd/0000:43:00.1/info
>>                  LNK STA -               0x11030042
>>                  Link Status -           Up
>>                  Link Speed -            PCI-E Gen 3
>>                  Link Width -            x16
> 
> No response from AMD maintainers, but it looks like you are correct.
> 
> This needs a "Fixes:" line here.  I took the liberty of adding one to
> this patch.
> 

Thank you for your suggestions. Yes, this patch fix the commit id: 
a1b3695 ("NTB: Add support for AMD PCI-Express Non-Transparent Bridge").

>> Signed-off-by: Jiasen Lin <linjiasen@hygon.cn>
>> ---
>>   drivers/ntb/hw/amd/ntb_hw_amd.c | 5 +++--
>>   drivers/ntb/hw/amd/ntb_hw_amd.h | 1 -
>>   2 files changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
>> index 156c2a1..ae91105 100644
>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.c
>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
>> @@ -855,8 +855,8 @@ static int amd_poll_link(struct amd_ntb_dev *ndev)
>>
>>          ndev->cntl_sta = reg;
>>
>> -       rc = pci_read_config_dword(ndev->ntb.pdev,
>> -                                  AMD_LINK_STATUS_OFFSET, &stat);
>> +       rc = pcie_capability_read_dword(ndev->ntb.pdev,
>> +                                  PCI_EXP_LNKCTL, &stat);
>>          if (rc)
>>                  return 0;
>>          ndev->lnk_sta = stat;
>> @@ -1139,6 +1139,7 @@ static const struct ntb_dev_data dev_data[] = {
>>   static const struct pci_device_id amd_ntb_pci_tbl[] = {
>>          { PCI_VDEVICE(AMD, 0x145b), (kernel_ulong_t)&dev_data[0] },
>>          { PCI_VDEVICE(AMD, 0x148b), (kernel_ulong_t)&dev_data[1] },
>> +       { PCI_VDEVICE(HYGON, 0x145b), (kernel_ulong_t)&dev_data[0] },
> 
> This should be a separate patch.  I took the liberty of splitting it
> off into a unique patch and attributing it to you.  I've pushed them
> to the ntb-next branch on
> https://github.com/jonmason/ntb
>
Thank you for your comment. We appreciate the time and effort you have 
spent to split it off, I will test it ASAP.

> Please verify everything looks acceptable to you (given the changes I
> did above that are attributed to you).  Also, testing of the latest
> code is always appreciated.
> 
> Thanks,
> Jon
> 
> 
>>          { 0, }
>>   };
>>   MODULE_DEVICE_TABLE(pci, amd_ntb_pci_tbl);
>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h b/drivers/ntb/hw/amd/ntb_hw_amd.h
>> index 139a307..39e5d18 100644
>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.h
>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
>> @@ -53,7 +53,6 @@
>>   #include <linux/pci.h>
>>
>>   #define AMD_LINK_HB_TIMEOUT    msecs_to_jiffies(1000)
>> -#define AMD_LINK_STATUS_OFFSET 0x68
>>   #define NTB_LIN_STA_ACTIVE_BIT 0x00000002
>>   #define NTB_LNK_STA_SPEED_MASK 0x000F0000
>>   #define NTB_LNK_STA_WIDTH_MASK 0x03F00000
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "linux-ntb" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1573119336-107732-1-git-send-email-linjiasen%40hygon.cn.

Thanks,

Jiasen Lin

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/933f74c7-7249-618c-13dc-9e4e47ad75d7%40hygon.cn.
