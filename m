Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDFC57CA29
	for <lists.bridge@lfdr.de>; Thu, 21 Jul 2022 13:59:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2348D41180;
	Thu, 21 Jul 2022 11:59:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2348D41180
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=Epo4QTTd
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0FIFav4jr-8T; Thu, 21 Jul 2022 11:59:45 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 9D2B340635;
	Thu, 21 Jul 2022 11:59:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D2B340635
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3FAC5C007D;
	Thu, 21 Jul 2022 11:59:44 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D2B80C002D
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 11:59:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A575E60BBB
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 11:59:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A575E60BBB
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Epo4QTTd
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vUMHwviOTDFa for <bridge@lists.linux-foundation.org>;
 Thu, 21 Jul 2022 11:59:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED2EE60AF4
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ED2EE60AF4
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 11:59:41 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id tk8so2748145ejc.7
 for <bridge@lists.linux-foundation.org>; Thu, 21 Jul 2022 04:59:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=a2m1SZg7h2oHboY4NytPHUqMWEZ4cTDRU1p3Uh7JG+s=;
 b=Epo4QTTd7Rmf98WYXfniuwZVegSEbuoqug8aWUntuRbDRsemnS1wNPmrlHKp5ywF8K
 46o+vGGjdO36dzhhuR119Vy2PL2m0LJDB1OunDXXMiZPUSbv8qLV81aZNz7yURhEKKQV
 qONo5//m4kDf/aZNOBobcaDuHaf47RluHRrFQas0s28JhGbuNoYpTOSykMcLWdI+pWRG
 dj54yl2wf/L0zZ48XsVIaBp0jZTUCy7/VKCZTN/aCdDtbw1QcpC8vqeKb7aXL+lAq35X
 hJaOZ+Tpg7pQUU0olzJuXjIS2UeqGM0OkzI2BkF6boaQTwpjPj5VZHEqHP2T76i0xNWn
 GwUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=a2m1SZg7h2oHboY4NytPHUqMWEZ4cTDRU1p3Uh7JG+s=;
 b=GMqivo7BeMT2Bi5ijEYZFU00gUIu3aiXSGx8dIl4cvDm8cOCHpsgu/+D19S2dtlPDH
 fEVxOSH9KxjUo1Cl8DPDXkYZD8UdrQ61VD/X43ZhinA67KebJ899pd082mveTsNluMBq
 Uk4XOu4XkFbLEBSXj7KqTGPo3OHuEzLKxdT1AiH95cGqpx0mBP/dvsvnhBPzul3p+l0h
 sZKd/LDcsM4JQQzc5Mhs4tR8Xsbz8zILwD/HqqtDdnlmML+Mir5wIWYjCwQZubGa9RCr
 vwTE0E+OOxckHIHW8kpsHp3JV/7IQjgXuzcu+ge9EQHImS8cg4wtMbRJsLQbQUP5Ba1N
 MbrQ==
X-Gm-Message-State: AJIora9JhDlba5sVmmD7g6Z85KkE1ptiwS5TQmjggcD/hw4wRtuljLqi
 3M9zfevlWjdsueOCrHneCn4=
X-Google-Smtp-Source: AGRyM1sgsgI/WSY+ey9uZVcDNSpjjPoqNQrVadgcVf4CT98XxbJLOlIlRDjYuFPJo0Q/oTsPUzORDA==
X-Received: by 2002:a17:907:3daa:b0:72b:7656:d4d2 with SMTP id
 he42-20020a1709073daa00b0072b7656d4d2mr40394554ejc.166.1658404779830; 
 Thu, 21 Jul 2022 04:59:39 -0700 (PDT)
Received: from skbuf ([188.25.231.115]) by smtp.gmail.com with ESMTPSA id
 v17-20020a056402175100b0043bb69e1dcfsm870539edx.85.2022.07.21.04.59.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Jul 2022 04:59:38 -0700 (PDT)
Date: Thu, 21 Jul 2022 14:59:35 +0300
From: Vladimir Oltean <olteanv@gmail.com>
To: netdev@kapio-technology.com
Message-ID: <20220721115935.5ctsbtoojtoxxubi@skbuf>
References: <20220708091550.2qcu3tyqkhgiudjg@skbuf>
 <e3ea3c0d72c2417430e601a150c7f0dd@kapio-technology.com>
 <20220708115624.rrjzjtidlhcqczjv@skbuf>
 <723e2995314b41ff323272536ef27341@kapio-technology.com>
 <YsqPWK67U0+Iw2Ru@shredder>
 <d3f674dc6b4f92f2fda3601685c78ced@kapio-technology.com>
 <Ys69DiAwT0Md+6ai@shredder>
 <648ba6718813bf76e7b973150b73f028@kapio-technology.com>
 <YtQosZV0exwyH6qo@shredder>
 <4500e01ec4e2f34a8bbb58ac9b657a40@kapio-technology.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4500e01ec4e2f34a8bbb58ac9b657a40@kapio-technology.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, bridge@lists.linux-foundation.org,
 Ido Schimmel <idosch@nvidia.com>, Nikolay Aleksandrov <razor@blackwall.org>,
 Roopa Prabhu <roopa@nvidia.com>, linux-kernel@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, Eric Dumazet <edumazet@google.com>,
 linux-kselftest@vger.kernel.org, netdev@vger.kernel.org, kuba@kernel.org,
 Paolo Abeni <pabeni@redhat.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v4 net-next 3/6] drivers: net: dsa: add locked
 fdb entry flag to drivers
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

On Sun, Jul 17, 2022 at 05:53:22PM +0200, netdev@kapio-technology.com wrote:
> > 3. What happens to packets with a DA matching the zero-DPV entry, are
> > they also discarded in hardware? If so, here we differ from the bridge
> > driver implementation where such packets will be forwarded according to
> > the locked entry and egress the locked port
> 
> I understand that egress will follow what is setup with regard to UC, MC and
> BC, though I haven't tested that. But no replies will get through of course
> as long as the port hasn't been opened for the iface behind the locked port.

Here, should we be rather fixing the software bridge, if the current
behavior is to forward packets towards locked FDB entries?
