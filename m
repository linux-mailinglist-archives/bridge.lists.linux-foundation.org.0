Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B9B028B15C
	for <lists.bridge@lfdr.de>; Mon, 12 Oct 2020 11:24:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4766786A01;
	Mon, 12 Oct 2020 09:24:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6tKWG+LnWkm9; Mon, 12 Oct 2020 09:24:01 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 098F38677D;
	Mon, 12 Oct 2020 09:24:01 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id F00D5C0051;
	Mon, 12 Oct 2020 09:24:00 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9D2A1C0051
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 20:19:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8B8EE86FC6
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 20:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1IfIaUdknYOA for <bridge@lists.linux-foundation.org>;
 Sun, 11 Oct 2020 20:19:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com
 [209.85.208.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B156886FB8
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 20:19:05 +0000 (UTC)
Received: by mail-ed1-f68.google.com with SMTP id 33so14728932edq.13
 for <bridge@lists.linux-foundation.org>; Sun, 11 Oct 2020 13:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=v4MsclsAjBQ07tS6Y2k6AL+A2oNnHE0z2Kb1St2ZEIk=;
 b=neCttq4/0J3+3NTrhanFCgR56+zz6hfDnAOzM1dINwDLIuAqA3tMADIrgI6aUb+zAi
 +eW84mbUHzG1mA5KER0AFuvgMSlGeNFlSeYUrjL3m0dJOszx4WBDI7kWKXISNlENJhPD
 050WWxG7qW9dQuQpk2PmuXO+528K82e7K89uJXuvnEVnilQvnYJVi757k2QQYxh4CVa5
 Ed4GZZNn1vn+kv1i5dFESGPhlygVY4oDvkiD0PyxkFWDbCeb3YrRkppBbbm0d5WR0fxd
 tkkajfw+0ba0e9Nb5KjCCcTqY9wUM/LHdfNPLudLcRYIk6kS1/Eq5VLz1CoqDWXm0BU7
 Hy7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=v4MsclsAjBQ07tS6Y2k6AL+A2oNnHE0z2Kb1St2ZEIk=;
 b=n4jR5KR7hcTWs46zDeWuzZ2GL41aMcJH/pkrbrkmzvFgqwkxFfRYZChsT8q3G/5BBb
 p66H4+dX7jcFQd7rDMvrMxn/AKPzIcyrwPE6IjKg99VN5S7CetSxFvSmXjrpZHvQr4EE
 FJGb2Ts2W9JwYlJA06DlDq87lSiEzRYwgAMCQLlLeuK9sh43Rthk4D2bguBDm9E3GLsF
 X4ykWbUka6pTDBDis1Subsk7GyzrtyR+wMFW8H32oSwL8ZmYUSYLNNLSiKDjgUf7F5ft
 7+kyPkVoajgy2k/+/3U7YDVcJboPJ/ht85u9DliKVpXn9agv4XSR4GHh2jytFu6ezy8Y
 S61Q==
X-Gm-Message-State: AOAM531WEQM2vzU3t/qosM8eu9MlVfgetwdOCAaRw6ws1cwwIUdNh9at
 dU3Fa4QhcBeZDAfWz0jhH830m6bkSvqCig==
X-Google-Smtp-Source: ABdhPJzdFiYdZKEVK13ixfB6IsshtIGvkXhMrrs+wlxjwrdUKK04SccKxJeGGB6X2gkUtDB6t4LhNg==
X-Received: by 2002:aa7:c98f:: with SMTP id c15mr10791684edt.200.1602447543892; 
 Sun, 11 Oct 2020 13:19:03 -0700 (PDT)
Received: from ?IPv6:2003:ea:8f00:6a00:51b7:bf4f:604:7d3d?
 (p200300ea8f006a0051b7bf4f06047d3d.dip0.t-ipconnect.de.
 [2003:ea:8f00:6a00:51b7:bf4f:604:7d3d])
 by smtp.googlemail.com with ESMTPSA id l17sm9690345eji.14.2020.10.11.13.19.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 11 Oct 2020 13:19:03 -0700 (PDT)
To: Stephen Hemminger <stephen@networkplumber.org>
References: <a46f539e-a54d-7e92-0372-cd96bb280729@gmail.com>
 <5bb71143-0dac-c413-7e97-50eed8a57862@gmail.com>
 <20201011125412.3719926a@hermes.local>
From: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <0a127353-4358-9664-6784-dec2c48e9b9d@gmail.com>
Date: Sun, 11 Oct 2020 22:18:58 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <20201011125412.3719926a@hermes.local>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 12 Oct 2020 09:23:56 +0000
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
 David Miller <davem@davemloft.net>,
 =?UTF-8?Q?Bj=c3=b8rn_Mork?= <bjorn@mork.no>
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

On 11.10.2020 21:54, Stephen Hemminger wrote:
> On Sun, 11 Oct 2020 21:36:43 +0200
> Heiner Kallweit <hkallweit1@gmail.com> wrote:
> 
>> +void dev_fetch_sw_netstats(struct rtnl_link_stats64 *s,
>> +			   struct pcpu_sw_netstats __percpu *netstats)
> 
> netstats is unmodified, should it be const?
> 
>> +{
>> +	int cpu;
>> +
>> +	if (IS_ERR_OR_NULL(netstats))
>> +		return;
> 
> Any code calling this with a null pointer is broken/buggy, please don't
> ignore that.
> 
Thanks, I'll consider both points in a v2.
