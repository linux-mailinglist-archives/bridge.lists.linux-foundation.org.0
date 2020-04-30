Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB5C1C00F5
	for <lists.bridge@lfdr.de>; Thu, 30 Apr 2020 17:58:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B6088877C;
	Thu, 30 Apr 2020 15:58:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tIYCwbfZVVAc; Thu, 30 Apr 2020 15:58:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id AFB0988767;
	Thu, 30 Apr 2020 15:58:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A523EC016F;
	Thu, 30 Apr 2020 15:58:03 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8CEECC016F
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 15:58:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 788BA24F78
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 15:58:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YuPdDbSJj11w for <bridge@lists.linux-foundation.org>;
 Thu, 30 Apr 2020 15:58:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 1014C204C9
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 15:58:00 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id e25so7063170ljg.5
 for <bridge@lists.linux-foundation.org>; Thu, 30 Apr 2020 08:57:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=86k3QMcaxzgeZ7W7KT/L8p/HNMu4qgvr2mrXHZQt+48=;
 b=XZF6052yV10SROVJ2G+TRb4EyzpFdU64n81Pg9f+pT0Wp4Z8alnBfG/0D4NN3CLjA/
 LBOPtyQEiZ21nnyedyROjR5GfSO0BvetrmBhu0P0e/7RWQ5kAzW7QScxxfUuqB5LLQqX
 uEiUmnx8nBcHCG0xVhv3GXy/fjZU82F5aT+l8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=86k3QMcaxzgeZ7W7KT/L8p/HNMu4qgvr2mrXHZQt+48=;
 b=YErR2+ywux71OzbNvJM8L+LFYE7QFeUXk+CbSLq0rckess1dyCMeJa5vlGbxc7FcPA
 WxmTpiaaN3opREb6CR10pGaedR8fOkc2BmYwN+CxtomtdWjHoxCHtGW3BPo6kVTV2c7z
 k6qPAK37BYZmOfByjyAcDT6McWQxwmZ18MbaslYWnFw+4rWXMve+VYLOKIKcFysOwr7U
 AokI32SuPLyF90E9xog9rI0naM8Q4U0HWdzLYYbnwgbuZ7s7BjkGC5BccS+Bf1/pXGUk
 MBKPMygT1js3ZhVg26gtM/JN/184xlPln43oZYatoyWhIArtXW+yffEhVldAVn1QVEcn
 rySA==
X-Gm-Message-State: AGi0PubgFszfIMmcaUcQiAH4HAeXVgu/y5hWdsoJWSZtoiPn1Gvd1bUr
 v07NAY6AJevcCphd7LLP9Rt/iA==
X-Google-Smtp-Source: APiQypL2LxWT5udKnpA2K2Ln/pz57VtS4yhjGktm05+hMX6cncd0lmyqsPS8GftxUbNGoqFIYJDmEw==
X-Received: by 2002:a2e:85c4:: with SMTP id h4mr1562ljj.112.1588262278038;
 Thu, 30 Apr 2020 08:57:58 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id b23sm64906lff.5.2020.04.30.08.57.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 08:57:57 -0700 (PDT)
To: Ido Schimmel <idosch@idosch.org>
References: <85b1e301-8189-540b-b4bf-d0902e74becc@profihost.ag>
 <20200430105551.GA4068275@splinter>
 <4b3a6079-d8d4-24c5-8fc9-15bcb96bca80@cumulusnetworks.com>
 <20200430155645.GA4076599@splinter>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <ed87d845-035c-37da-5439-1bcfb22fa4c5@cumulusnetworks.com>
Date: Thu, 30 Apr 2020 18:57:55 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200430155645.GA4076599@splinter>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 "bridge@lists.linux-foundation.org" <bridge@lists.linux-foundation.org>,
 davem@davemloft.net, Stefan Priebe - Profihost AG <s.priebe@profihost.ag>
Subject: Re: [Bridge] BUG: soft lockup while deleting tap interface from
 vlan aware bridge
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

On 30/04/2020 18:56, Ido Schimmel wrote:
> On Thu, Apr 30, 2020 at 02:20:23PM +0300, Nikolay Aleksandrov wrote:
>> Maybe we can batch the deletes at say 32 at a time?
> 
> Hi Nik,
> 
> Thanks for looking into this!
> 
> I don't really feel comfortable hard coding an arbitrary number of
> entries before calling cond_resched(). I didn't see a noticeable
> difference in execution time with the previous patch versus an unpatched
> kernel. Also, in the examples I saw in the networking code
> cond_resched() is always called after each loop iteration.
> 
> Let me know how you prefer it and I will send a patch.
> 

that's ok, send it as it is

