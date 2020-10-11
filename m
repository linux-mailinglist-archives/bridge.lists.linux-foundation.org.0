Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7F828AA87
	for <lists.bridge@lfdr.de>; Sun, 11 Oct 2020 22:55:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4EABD85E6E;
	Sun, 11 Oct 2020 20:55:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W-kCymlGAzT5; Sun, 11 Oct 2020 20:55:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DB45085E40;
	Sun, 11 Oct 2020 20:55:08 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C57F1C0051;
	Sun, 11 Oct 2020 20:55:08 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B29E5C0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 20:55:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9E9A786D10
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 20:55:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GUIAwMfEybDi for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 20:55:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ECE4486D9A
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 20:55:05 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id d23so7377757pll.7
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 13:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ce5PmEqmv1YSWMDHRt7GbAyKG6KhkYzK8oKJ+L0ajJU=;
 b=NecgSIK6HUp8mfsj4UInLUpOx0FhmYVbOiqvrr2fvZ5TYkrQUuEXkLPTzx5tcFBsEz
 Nq5+JltEQ91NdKRQV2G4Iq1a+xepvbeY+DfJKI4gN+xMLpM7ffxRD/Vy8ael2SRXmk1R
 zyFNBrWANYpGkvC0C9FQlDI7o+XgrW96Kn/50uUMwFceO/cPDsQ5nMCNredRM1yohFiF
 WCfcxk5DLRJtocYCPu/Q2rJDAWygrt7fEniMPlOpK2C7WdbS9Qof9pGftoU6zVWTgefu
 A0B22SdP73LR4NQuzphqUkQ+dMI1GkQXsNYI0Dl/JKScaU4MYP2jBBnNoIji5e1DpelC
 TCTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ce5PmEqmv1YSWMDHRt7GbAyKG6KhkYzK8oKJ+L0ajJU=;
 b=f5wpy3M2KmoitqBSGRVzs7ZJuJgk9lrC0BQhDuMeM0G4kwPo6hAbU1brcWqIY/gqpX
 XELpxVeuEorbsJzvGN2vOctihDBrJH452GaIqwbag+Wht1tcbcry1no7V4JdF5rg7xyG
 ErQIRUKtxpSyOUVGUCLw/dr1ETDgTK0T03P4z4wxs8pKhBPCzl+Fho1gye1ZbzpVAN3B
 W1f1xNZx4+4dvGPBfFMIJIcWpzs41QBX2jFvCWyjrHyaV8a6ZcFxBCYIImlJibgRBDGZ
 9YYCTDKF5UBb9MahMUcRltdIx8HQwGFZy//cliDH3Hvqa7kgTohpNazwKBIvJsr+RkDQ
 KflA==
X-Gm-Message-State: AOAM5333B3VGZkPXHQZXKPxDDAjf7lknD07QVjKbC0+1vYDucG9P46a4
 6WJv/geqNlOo+jH+FwDCuNk4eA+12snYGw==
X-Google-Smtp-Source: ABdhPJyvpHbR55UUKFuI4uBzl5Pqj28b0PIKd/Oy+gbrycGDnCsZJfFifJORg9kf7WymGLQ6QTDtfQ==
X-Received: by 2002:aa7:8216:0:b029:142:2501:3968 with SMTP id
 k22-20020aa782160000b029014225013968mr20639458pfi.45.1602446061008; 
 Sun, 11 Oct 2020 12:54:21 -0700 (PDT)
Received: from hermes.local (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id a185sm17241288pgc.46.2020.10.11.12.54.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Oct 2020 12:54:20 -0700 (PDT)
Date: Sun, 11 Oct 2020 12:54:12 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20201011125412.3719926a@hermes.local>
In-Reply-To: <5bb71143-0dac-c413-7e97-50eed8a57862@gmail.com>
References: <a46f539e-a54d-7e92-0372-cd96bb280729@gmail.com>
 <5bb71143-0dac-c413-7e97-50eed8a57862@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: Andrew Lunn <andrew@lunn.ch>,
 Linux USB Mailing List <linux-usb@vger.kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Sergey Matyukevich <geomatsi@gmail.com>, linux-rdma@vger.kernel.org,
 bridge@lists.linux-foundation.org, Pravin B Shelar <pshelar@ovn.org>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>,
 Igor Mitsyanko <imitsyanko@quantenna.com>,
 Alexey Kuznetsov <kuznet@ms2.inr.ac.ru>, Kalle Valo <kvalo@codeaurora.org>,
 Hideaki YOSHIFUJI <yoshfuji@linux-ipv6.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Oliver Neukum <oneukum@suse.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>, Vladimir Oltean <olteanv@gmail.com>,
 David Miller <davem@davemloft.net>, =?UTF-8?B?QmrDuHJu?= Mork <bjorn@mork.no>
Subject: Re: [Bridge] [PATCH net-next 01/12] net: core: add function
 dev_fetch_sw_netstats for fetching pcpu_sw_netstats
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Sun, 11 Oct 2020 21:36:43 +0200
Heiner Kallweit <hkallweit1@gmail.com> wrote:

> +void dev_fetch_sw_netstats(struct rtnl_link_stats64 *s,
> +			   struct pcpu_sw_netstats __percpu *netstats)

netstats is unmodified, should it be const?

> +{
> +	int cpu;
> +
> +	if (IS_ERR_OR_NULL(netstats))
> +		return;

Any code calling this with a null pointer is broken/buggy, please don't
ignore that.
