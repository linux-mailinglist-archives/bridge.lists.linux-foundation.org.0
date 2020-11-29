Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3612C7B40
	for <lists.bridge@lfdr.de>; Sun, 29 Nov 2020 21:59:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BA5F287294;
	Sun, 29 Nov 2020 20:59:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WRydrQyjbhGJ; Sun, 29 Nov 2020 20:59:02 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9A23B8728A;
	Sun, 29 Nov 2020 20:59:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 70C06C0052;
	Sun, 29 Nov 2020 20:59:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 8C707C0052
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 20:59:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7003A862C1
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 20:59:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0sXlZok9ZcHJ for <bridge@lists.linux-foundation.org>;
 Sun, 29 Nov 2020 20:58:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 804C786102
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 20:58:58 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id q137so6174473iod.9
 for <bridge@lists.linux-foundation.org>; Sun, 29 Nov 2020 12:58:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=JSHVC83f9zQxL2ofrrqfIzwQKPtC6+odZmbyX4hFo0Q=;
 b=Aw2v6owuj3vvapFlLLv+r6JrXHf/uZvq6rsxgA25XH6VSNSj1BaIA9hg+9N1iWLUbm
 OqkJEc7OVpmNMAAT83FNmceMbsTrYCj/S674rq37GQFrqz+n9XWlwAeWaUmYkMt4LMo3
 0O+JBNVJFGnKvSsA6Myvux8hluxcCuCynKNO15dOyKWQA/TPY3LF3u+/8uA1ARqJ/nMP
 K9Yp4I51Nt2gUmUf24Tgh1DxNCn72cke81Be7TiI4ucDlyXvWUMP/EeY/sCbDEt12jLT
 Pqd1pklpVQCscPw1gXz2u6ziqU3W84pWkY1Cj6fZoLPE02oOjzNtU04mGNxuQSMcR5j6
 7Ykg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JSHVC83f9zQxL2ofrrqfIzwQKPtC6+odZmbyX4hFo0Q=;
 b=ZaHLC3ux3f34c9+zKXYrygVVbkL/E6clDW7Lo+VAic3qF1HmtxgrgyXoa1lm5UripN
 AFlzBpZCsp9/X64PN5jObN0lBZRbLj6J6omz+cKiMVR1kleP7V6WagNcjEQEV6LxKWnp
 FEswvZUEWgnWAFTzr1zaVZwVQP9zMGi/SVXHmuYv//qTZzKZ9uNyZVX0XNkTOuaospOz
 Gib1Q/fJiVFZVWPvBrEpdK9S0CFyTDVKzepvJeugLlE+5FUBUi7+Z5E7gt4M9cgmh8Jn
 0eBeeogfYEjKMv3n47woZxDgtUQ8q7akFnEnlnqGoN+Omzbjn4HkBsGuw48G7UW2gsXG
 pacA==
X-Gm-Message-State: AOAM530J0K20dRy2k4jTaZST1DnTD5PNAqCaUTsemBT156DA/8vUMDhq
 QCCjMMOa8tXOq+lGijDQbAo=
X-Google-Smtp-Source: ABdhPJxyXAEYjokf9NPONgKHW9p9mIJEGrj0AzUfPYIZmDE/YiXq1KnzKtX6gpvnAVTZBiQK8MfIZA==
X-Received: by 2002:a5d:939a:: with SMTP id c26mr334702iol.63.1606683537789;
 Sun, 29 Nov 2020 12:58:57 -0800 (PST)
Received: from Davids-MacBook-Pro.local
 ([2601:282:800:dc80:4896:3e20:e1a7:6425])
 by smtp.googlemail.com with ESMTPSA id x23sm7276273ioh.28.2020.11.29.12.58.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 29 Nov 2020 12:58:57 -0800 (PST)
To: Vladimir Oltean <vladimir.oltean@nxp.com>, Roopa Prabhu
 <roopa@nvidia.com>, Nikolay Aleksandrov <nikolay@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20201125143639.3587854-1-vladimir.oltean@nxp.com>
From: David Ahern <dsahern@gmail.com>
Message-ID: <5b4172c8-33a2-49d8-fd9f-17174242a384@gmail.com>
Date: Sun, 29 Nov 2020 13:58:56 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.16; rv:78.0)
 Gecko/20100101 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201125143639.3587854-1-vladimir.oltean@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: andrew@lunn.ch, f.fainelli@gmail.com, jiri@resnulli.us, idosch@idosch.org,
 Jakub Kicinski <kuba@kernel.org>, vivien.didelot@gmail.com
Subject: Re: [Bridge] [PATCH v3 iproute2] bridge: add support for L2
	multicast groups
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

On 11/25/20 7:36 AM, Vladimir Oltean wrote:
> Extend the 'bridge mdb' command for the following syntax:
> bridge mdb add dev br0 port swp0 grp 01:02:03:04:05:06 permanent
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> Changes in v3:
> - Using rt_addr_n2a_r instead of inet_ntop/ll_addr_n2a directly.
> - Updated the bridge manpage.
> 
> Changes in v2:
> - Removed the const void casts.
> - Removed MDB_FLAGS_L2 from the UAPI to be in sync with the latest
>   kernel patch:
>   https://patchwork.ozlabs.org/project/netdev/patch/20201028233831.610076-1-vladimir.oltean@nxp.com/
> 
>  bridge/mdb.c                   | 54 ++++++++++++++++++++++++++--------
>  include/uapi/linux/if_bridge.h |  1 +
>  man/man8/bridge.8              |  8 ++---
>  3 files changed, 46 insertions(+), 17 deletions(-)
> 

applied to iproute2-next

