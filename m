Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EE20E12329A
	for <lists.bridge@lfdr.de>; Tue, 17 Dec 2019 17:35:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA8BA85FA4;
	Tue, 17 Dec 2019 16:35:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2g6qSnxQahYM; Tue, 17 Dec 2019 16:35:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62F31860D2;
	Tue, 17 Dec 2019 16:35:15 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3EC2AC077D;
	Tue, 17 Dec 2019 16:35:15 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AB2C0C077D
 for <bridge@lists.linux-foundation.org>; Tue, 17 Dec 2019 16:35:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A47B08489C
 for <bridge@lists.linux-foundation.org>; Tue, 17 Dec 2019 16:35:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DLKAJYwACMzJ for <bridge@lists.linux-foundation.org>;
 Tue, 17 Dec 2019 16:35:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0048182492
 for <bridge@lists.linux-foundation.org>; Tue, 17 Dec 2019 16:35:12 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id x1so8737577qkl.12
 for <bridge@lists.linux-foundation.org>; Tue, 17 Dec 2019 08:35:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4hsK/0s8PL+6nEueLAF8iMvcACpG5LyaCfMthRe24CU=;
 b=ouip0pnwFVPH0Z08TmBjHyZZPW45gYU0h9zI4PfRLa+kARjS4p0/k3MlzyCwmXOEqU
 K+u9j/F5sbhzmcFQyoVPJ9hMWE0VA2VuRzY+mSPvCG/OGF8OIgg+zWVTh30jbnu3PnJG
 lWsLTtBNRswFNcdsrSo6Sz+JezKh9pK5LUKYw6S4bJpECI12WjbX/AJn0uSZnWHjDatd
 oxdtHBhKyYBHNihRadxtgVJq9WMJrj376Nx2WauIKRxMnheRnMwx7ZFe/B6vbTZCmscD
 vpe+TnEF13riSESO3r577s0NKYsH1C5K68biieREi398h4gOxR1YL8ZmVxLFq0vc1psY
 pY8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4hsK/0s8PL+6nEueLAF8iMvcACpG5LyaCfMthRe24CU=;
 b=Dah8SCvBggEYk9TuhSdaVu2PtTsxcnk4QPBHXui0GbKdrKCBTJlweVnjyZTeFdFuiy
 dQETes2gXC2jxAbAOEfLYN06sMfSrWhDBbas2WgtQ2uQN5uzgWchIYAjHHej9HfrKCfX
 ZLh2vJebj1z7gM8gKpY/VWopK4VCMdLC1aWOyZ6nZLBTsLZbiD+q7TfLRGG0PhulzXjq
 1bofskSE/4T91YzKNcjACDXpRbn1k3PHhSHJapFjDcPjD6hTo2IG07XoZBzAx7xQQ4ph
 2TgS1kzhkO641KIMNyqwfxrI3o52XUVNWeTAQlAChDsYFw5O44KyfxjEo/JSWZUBgkJ9
 qn3A==
X-Gm-Message-State: APjAAAVp/8KM9jHrUc0beO8TxzLZd/TadpFGWdRtCuPVXl3x+j5vjJs5
 5pI+nJzNKVhKZwhbjgNwem0=
X-Google-Smtp-Source: APXvYqzvgGGYyqLn2m7eFzYVW2GQtEDmoMc9Wo0bZPBPc3g3WGLxAeXQBGhzK6t9MjswPCRmDfM97w==
X-Received: by 2002:a37:89c7:: with SMTP id l190mr5999223qkd.498.1576600511974; 
 Tue, 17 Dec 2019 08:35:11 -0800 (PST)
Received: from ?IPv6:2601:284:8202:10b0:b136:c627:c416:750?
 ([2601:284:8202:10b0:b136:c627:c416:750])
 by smtp.googlemail.com with ESMTPSA id r44sm1288273qta.26.2019.12.17.08.35.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Dec 2019 08:35:11 -0800 (PST)
To: Vivien Didelot <vivien.didelot@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
References: <20191212010711.1664000-1-vivien.didelot@gmail.com>
 <20191212010711.1664000-2-vivien.didelot@gmail.com>
From: David Ahern <dsahern@gmail.com>
Message-ID: <2166597e-b5d2-ee1e-3dc3-bfacdf3cc8b8@gmail.com>
Date: Tue, 17 Dec 2019 09:35:09 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:68.0)
 Gecko/20100101 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191212010711.1664000-2-vivien.didelot@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 David Ahern <dsahern@gmail.com>
Subject: Re: [Bridge] [PATCH iproute2 v4] iplink: add support for STP xstats
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

On 12/11/19 6:07 PM, Vivien Didelot wrote:
> Add support for the BRIDGE_XSTATS_STP xstats, as follow:
> 
>     # ip link xstats type bridge_slave dev lan4 stp
>     lan4
>                         STP BPDU:  RX: 0 TX: 61
>                         STP TCN:   RX: 0 TX: 0
>                         STP Transitions: Blocked: 2 Forwarding: 1
> 
> Or below as JSON:
> 
>     # ip -j -p link xstats type bridge_slave dev lan0 stp
>     [ {
>             "ifname": "lan0",
>             "stp": {
>                 "rx_bpdu": 0,
>                 "tx_bpdu": 500,
>                 "rx_tcn": 0,
>                 "tx_tcn": 0,
>                 "transition_blk": 0,
>                 "transition_fwd": 0
>             }
>         } ]
> 
> Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
> ---
>  include/uapi/linux/if_bridge.h | 10 ++++++++++
>  ip/iplink_bridge.c             | 26 ++++++++++++++++++++++++++
>  2 files changed, 36 insertions(+)
> 

applied to iproute2-next. Thanks


