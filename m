Return-Path: <linux-ntb+bncBC6JD5V23ENBBJUQTP4AKGQEUYIVGYA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id D80BC2199F7
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Jul 2020 09:32:54 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id g14sf1389247wrp.8
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Jul 2020 00:32:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594279974; cv=pass;
        d=google.com; s=arc-20160816;
        b=vef00kydAn31D9Cba5pUAWImcdvzfWZQFyydPFepFMbJC7CznJxfVaaWZCajq++W9o
         EHwJCXDeaz2ThoEBPmgSa5AK0ZXd5rC9vGALNycq0t43WFXA9LYBpDTOSfr2LvpRFDU6
         bOqKVBtwvsvhw1my7GzDGrwAh1CVhXosaTjeMehCNuoIQZXWeK1lXlC3T7CnfWckA+Wi
         ft9ND3UrnCE7A1w0Hf8j1MWoXR/7oD41u5KNMkKHfWC4Wt7nASXaff55jf4pT2wFPzZG
         4a+2AjbehiacqgPXJ8iLO+VU/d9fKDo+rlm1CA0yNX1DsITuJgqxzlzrqOcFhIUfSxAy
         8r4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:sender:dkim-signature;
        bh=46BvD+GBcYzn8+fuNdvSxXPqbtu56oW7RNcUPqob2D4=;
        b=JZaI92j/uAOdziVKG/gdaAyMPrhyjEXKfiIGo0tXMPyUhupteHUdCo8oe0fWxIRyYE
         ZUysUTZZdf57RBeMaBvfLQKIsfHgduYpTk4Gty+Zg5t6nO2zpuAux7quRDOdYyH1Hplo
         mzONQDPfX80QdK92Cr/wkPeZJQlKs37SyH7MaenfbK7i+MWPAYwr48t+zMjuI9CTQyq/
         F4LPy0iA60ilN5os2JFCdlxJLnItevg5CIZrf6kSsaw7OK/W3Gm131IsdKCwuJJp586q
         q8A61KcJBUKF9KfvzwjkZScvd1LYXf4dhMCQt2lekraUfV/h2w8az8aRCt0O5CQLrr5V
         RZFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.68 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=46BvD+GBcYzn8+fuNdvSxXPqbtu56oW7RNcUPqob2D4=;
        b=UHNBsnkVoSzQyJSDS1ZKU34nd5IpqQVSGn16ypjjRTkoaB+KcBqCpfgOKkV8hRz8No
         kgGKzEpg0hi92647ECBC2fBkOezCfBBgEy3ibFErviK4LDt4G/bj3Mx5hBqh2r8HnY2A
         kvwW7ao+sak9xqsDCO9oQjpT0iPRQIGMRy1uGDU81uTi4TgniRoGxTAwCiLHbcvL7U7t
         RgAjZqNJS5Bh24XwsD7QokW9XeEp+J8B/ydUmZ/0gDwdQlzsgcl2CwKnnCa2o7nYQLEo
         ScQ0R8FDqJ7hE39KVD8Qb/vIJrRZYH92dsN8XhbHkWvH8zefK5+HikuJ6qvj4VIsyO0f
         VFpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=46BvD+GBcYzn8+fuNdvSxXPqbtu56oW7RNcUPqob2D4=;
        b=reu+qMqpqxjyUo1aIJuNKq/VstPRBfEcdWeFaxAJYg9XogoDKyjDzDFgjG42IzFLhH
         f0Y8h5PIan3qjxJscTOlRLwZZKjG+Y5EsUfXOQr5y6EtNupakeyTCfS1/Yvny48xkuXF
         lffTXJcq1bgtNHj1ANPOKKuIsXxIwVtm3C7CyKa2OTABoV4u+CUe1Zg3z0W4f2P3MmUw
         69lcgQKYAW9D+ba7jgBE2RP/nDWaObKAXCshJ8REzlz+yBsJmTT0jC3MALVk4R+DV52g
         +MJK6Grn003N0IxLbuKhgus/oDtl+myO4v2JoEj/4Gtuxrrzjyzk839Qjps5CjaM6IJj
         Ewsg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530BIDqILIJB4HU+krRTppTwoR/5tYEioAJL/evPQUSg9vYL9bbd
	EJxczN9CeZ1NxgkrzAPIFQQ=
X-Google-Smtp-Source: ABdhPJzmXzw2kTstBDZxiRDJ2DJOFyGakUnM7UVc2Y1mh3KhI2NMKZR9b2XpDYT86wfJmJ77QaEAvQ==
X-Received: by 2002:a5d:4f0e:: with SMTP id c14mr65616857wru.410.1594279974552;
        Thu, 09 Jul 2020 00:32:54 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:600c:2902:: with SMTP id i2ls2341120wmd.2.gmail; Thu, 09
 Jul 2020 00:32:54 -0700 (PDT)
X-Received: by 2002:a1c:4303:: with SMTP id q3mr13461258wma.134.1594279973993;
        Thu, 09 Jul 2020 00:32:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594279973; cv=none;
        d=google.com; s=arc-20160816;
        b=ClUIaIQhIZoVqRiy9YIsWJOy/vjnUn+BkvSnJPTiX5w60BTvi8YGI2PfRJYIH+AAC5
         HJpipVY6v7tvtXwTYa1Wri7FzmOspPCLJRGGnlqAivD6qkn+PhqVrTLj7G5yQaQAjEMD
         yllqFKwLq/cYcsjtCmy2cb+S4xUvc4Q0c3yOrfFvDZGPvrEzTSLrOhZG7tknAUh+NP48
         D1UWcwMXt2MD7124AySHSdoeC6fxPYaq39YJavbLlsgVMDFzL1CyQ5IO8FQFls4gzXGs
         KhEPb96wmxMtMYAQ+qPZeMrTmAG1eVABB5oLoKD63c+YHoVynd9RrtxPyuvGBhnSDg8x
         y+Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date;
        bh=j7DqbPSyBqq2qwNcdYTCxivolsap4LLnpECg1M+YJYk=;
        b=UQQ8dYv2Gvu44H7XRIxtGZDk80oXhgygVFSmMEB2SJ8iuouesavyrZY21Nl8fsrEBi
         jY7EWh+pZng7mCCtlcUUinhCAV0yYUPeNZp0cDL3vQA8CynPVkwJaez4OHAnXPKdZgnj
         KjEbIOx1GlT68nZzctDMQ2rrkji8WffWbKtf4UrEi0phLGIK1oosqyve+xvwQAkDyBTJ
         AWTNO88cYfPUEQGE0wlRIRg1qtD+E1XvBzonWWaPNV+LibeOjvWNEckUusWjo/EK8ICp
         HJp10I2eqnYJ6i/vCNvcoQwnNplGk3p9kHS1V/VnPZ3eOCDR5xqGwBzYfrz7Fv4OGxj6
         yZWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.68 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com. [209.85.208.68])
        by gmr-mx.google.com with ESMTPS id l4si101719wrm.3.2020.07.09.00.32.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2020 00:32:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.68 as permitted sender) client-ip=209.85.208.68;
Received: by mail-ed1-f68.google.com with SMTP id e22so1017198edq.8
        for <linux-ntb@googlegroups.com>; Thu, 09 Jul 2020 00:32:53 -0700 (PDT)
X-Received: by 2002:a50:d8c2:: with SMTP id y2mr62468108edj.114.1594279973653;
        Thu, 09 Jul 2020 00:32:53 -0700 (PDT)
Received: from kozik-lap ([194.230.155.195])
        by smtp.googlemail.com with ESMTPSA id sa10sm1258696ejb.79.2020.07.09.00.32.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 09 Jul 2020 00:32:52 -0700 (PDT)
Date: Thu, 9 Jul 2020 09:32:49 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Richard Henderson <rth@twiddle.net>,
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
	Matt Turner <mattst88@gmail.com>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Helge Deller <deller@gmx.de>, Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	Rich Felker <dalias@libc.org>, Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, Dave Jiang <dave.jiang@intel.com>,
	Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-alpha@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-sh@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, linux-ntb@googlegroups.com,
	virtualization@lists.linux-foundation.org,
	linux-arch@vger.kernel.org
Subject: Re: [PATCH v3 1/4] iomap: Constify ioreadX() iomem argument (as in
 generic implementation)
Message-ID: <20200709073249.GA6335@kozik-lap>
References: <20200709072837.5869-1-krzk@kernel.org>
 <20200709072837.5869-2-krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200709072837.5869-2-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.68 as
 permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;       dmarc=fail
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

On Thu, Jul 09, 2020 at 09:28:34AM +0200, Krzysztof Kozlowski wrote:
> The ioreadX() and ioreadX_rep() helpers have inconsistent interface.  On
> some architectures void *__iomem address argument is a pointer to const,
> on some not.
> 
> Implementations of ioreadX() do not modify the memory under the address
> so they can be converted to a "const" version for const-safety and
> consistency among architectures.
> 
> Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>

I forgot to put here one more Ack, for PowerPC:
Acked-by: Michael Ellerman <mpe@ellerman.id.au> (powerpc)

https://lore.kernel.org/lkml/87ftedj0zz.fsf@mpe.ellerman.id.au/

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200709073249.GA6335%40kozik-lap.
