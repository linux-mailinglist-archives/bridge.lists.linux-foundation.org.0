Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8644524B88A
	for <lists.bridge@lfdr.de>; Thu, 20 Aug 2020 13:23:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CAFEA85AB9;
	Thu, 20 Aug 2020 11:23:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1Ru4enguTHWL; Thu, 20 Aug 2020 11:23:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5701B88189;
	Thu, 20 Aug 2020 11:23:19 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 371CEC0051;
	Thu, 20 Aug 2020 11:23:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 52750C0051
 for <bridge@lists.linux-foundation.org>; Thu, 20 Aug 2020 11:23:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 24DF6220DF
 for <bridge@lists.linux-foundation.org>; Thu, 20 Aug 2020 11:23:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f-6vdDPEvN-6 for <bridge@lists.linux-foundation.org>;
 Thu, 20 Aug 2020 11:23:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 075F5220A9
 for <bridge@lists.linux-foundation.org>; Thu, 20 Aug 2020 11:23:16 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id 88so1672935wrh.3
 for <bridge@lists.linux-foundation.org>; Thu, 20 Aug 2020 04:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=U5n6SRT8Sjz1CPU13WE9d5LyTZiKHzyZjLgHZoxXOTE=;
 b=aqEEg19xOzHTc3ozUAXeqmBIsz/TxteAu/dHfpFyffdvzCI0suNWh4lVdHYbTteaQs
 OwOUuXvXjz7P5oYJiISCCLCsgVQFlym97GpZAeY9RzKEc20kmHFwcVWHGY86p2tu/3e4
 YURoEZWEfJlJorMoUduq5s3XoX4O5Fz2XxKfE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=U5n6SRT8Sjz1CPU13WE9d5LyTZiKHzyZjLgHZoxXOTE=;
 b=K3NFkRr1O/meiBXArC63TtmDlk/8etejapgvpCbPQRqjCyNrJi8O8NJwUfscyBPtu6
 +XXRLWuh/FgbLdlpQbM85OvkqrvLnI5BGlXUmW2L6PK0XZADuyLGNqqgBzb/SmgBC4AB
 EorQZwYcbAbyJlVow3E9w9KhXR1pMxxL9Nl/686dYZfYFBuPgBd2FBv1gK0cWthR/7vu
 oWbEOrDks+pfo8WrMjdeEm8/oDq+nKnfZDbJWoGmqTtlwThoilgI6c38/yIRm3KAba1p
 SX6lcuym6a34GcNL0rAcnUaKbdu3eYkRMVQy4UbRFKQ1pY6MZFB49ZqDyfjiLTeY3URi
 A54g==
X-Gm-Message-State: AOAM531yin59BJVPUWtXWZicd4WVGstmFot0qG83kX1Zjmsc7RlXlvc6
 DsIwfw1a6DpIdkM5QgB/MgtI+Q==
X-Google-Smtp-Source: ABdhPJwsPZzuqgFAlc6bqa3hO310FDoiF1csyrwZ7PXVpepe+lQQsB6yPf4bw0JUqp4EtOSSb0TOrQ==
X-Received: by 2002:a5d:6345:: with SMTP id b5mr3010882wrw.204.1597922595213; 
 Thu, 20 Aug 2020 04:23:15 -0700 (PDT)
Received: from [192.168.0.101] ([79.134.172.106])
 by smtp.googlemail.com with ESMTPSA id t25sm3478958wmj.18.2020.08.20.04.23.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Aug 2020 04:23:14 -0700 (PDT)
To: Kurt Kanzenbach <kurt@linutronix.de>,
 Roopa Prabhu <roopa@cumulusnetworks.com>
References: <20200820105737.5089-1-kurt@linutronix.de>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <5affe98d-bb16-0744-5266-db708fb9dc16@cumulusnetworks.com>
Date: Thu, 20 Aug 2020 14:23:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200820105737.5089-1-kurt@linutronix.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Jakub Kicinski <kuba@kernel.org>, bridge@lists.linux-foundation.org,
 "David S. Miller" <davem@davemloft.net>, netdev@vger.kernel.org
Subject: Re: [Bridge] [RFC PATCH] net: bridge: Don't reset time stamps on
 SO_TXTIME enabled sockets
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

On 8/20/20 1:57 PM, Kurt Kanzenbach wrote:
> When using the ETF Qdisc in combination with a bridge and DSA, then all packets
> gets dropped due to invalid time stamps. The setup looks like this:
> 
> Transmit path:
> 
> Application -> bridge (br0) -> DSA slave ports (lan0, lan1) -> ETF Qdisc
>              -> ethernet (eth0)
> 
> The user space application uses SO_TXTIME to attach a sending time stamp for
> each packet using the corresponding interface. That time stamp is then attached
> to the skb in the kernel. The first network device involved in the chain is the
> bridge device. However, in br_forward_finish() the time stamp is reset to zero
> unconditionally. Meaning when the skb arrives at the ETF Qdisc, it's dropped as
> invalid because the time stamp is zero.
> 
> The reset of the time stamp in the bridge code is there for a good reason. See
> commit 41d1c8839e5f ("net: clear skb->tstamp in bridge forwarding path")
> Therefore, add a conditional for SO_TXTIME enabled sockets.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
>   net/bridge/br_forward.c | 9 +++++++++
>   1 file changed, 9 insertions(+)
> 
> RFC, because I don't know if that's the correct way to solve that issue.
> 


The new conditionals will be for all forwarded packets, not only the ones that are transmitted through
the bridge master device. If you'd like to do this please limit it to the bridge dev transmit.

Thanks,
  Nik
