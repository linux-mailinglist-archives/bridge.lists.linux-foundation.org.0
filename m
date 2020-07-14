Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E6F21F256
	for <lists.bridge@lfdr.de>; Tue, 14 Jul 2020 15:21:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 71DCD8A608;
	Tue, 14 Jul 2020 13:21:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dJaDnw+o9U-R; Tue, 14 Jul 2020 13:21:52 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id B91138A610;
	Tue, 14 Jul 2020 13:21:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AE2A8C0733;
	Tue, 14 Jul 2020 13:21:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 1D46AC0733
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:21:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0BBF38850B
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:21:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dAPvmAJSUdQy for <bridge@lists.linux-foundation.org>;
 Tue, 14 Jul 2020 13:21:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5097E884E4
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 13:21:50 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id l2so5889661wmf.0
 for <bridge@lists.linux-foundation.org>; Tue, 14 Jul 2020 06:21:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=g2EyQlAqpHZO5s5qqHKlAo11WIHmOqc0rUAshNEUl2M=;
 b=borORmurH5EPJJNnd7Lhs3GNt3l3WCLMftWORGj+zrxXvkT3GSAjiw6lXlF54+CB7A
 W1bX0hSTU76d2ShMudHT/6fsfXkzmfailabgVc3MOvvjv5zJX+ncFsfpxvejGZW84o8z
 3er9h9m7CAECayAUE5SjM+MucvuPrewYpQU2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=g2EyQlAqpHZO5s5qqHKlAo11WIHmOqc0rUAshNEUl2M=;
 b=o1q2kvMZwKUXmad7ys/tPlLkYzBmgZLHbkcMhHjg8BvMZc17HADXrXpjKQ779ztZ7A
 cTxh3pbldFaObuiX6c+GE4/ACkggrRwPwmmMfhGW1w0842jN+aDLatK5AAqJLTXvrqgb
 b5umPox7oPgxfngJii7HRWUrD5FDXLSCrSZYR2EVEsXCxaukTpyQRItJSIPIR7H1ddUB
 ttjPKGeZDHxkmT+cYW7A0KFi4c/cRVpl4PJ7oZdFOdIXFOsQFtva0o9UvZdW6EJiS8cX
 fameKPq46v+mljVmbXid7XxrcVuZHe6EdLdfRc+5lAIq0rVqOrjs0tidHrKgJDtTcSPZ
 KGCA==
X-Gm-Message-State: AOAM5323kCFg+rymQzdUAMvO97jpJlbNlr4JbMxRJLV6Lf9Oa8lmokYP
 CscUTtFa9E19ZbjaSwfrGa1MiIMi1jSpwA==
X-Google-Smtp-Source: ABdhPJwatvSqQbprk1c/oMEOGLR0UWtFeqVkvmelzVPpnXp5yBndiAquQQFvlNxWRQHf/rPgoJxbig==
X-Received: by 2002:a1c:d8:: with SMTP id 207mr4303796wma.81.1594732485190;
 Tue, 14 Jul 2020 06:14:45 -0700 (PDT)
Received: from [192.168.0.109] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.gmail.com with ESMTPSA id f14sm32074246wro.90.2020.07.14.06.14.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jul 2020 06:14:44 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>, roopa@cumulusnetworks.com, 
 davem@davemloft.net, kuba@kernel.org, jiri@resnulli.us, ivecera@redhat.com,
 andrew@lunn.ch, UNGLinuxDriver@microchip.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org
References: <20200714073458.1939574-1-horatiu.vultur@microchip.com>
 <20200714073458.1939574-4-horatiu.vultur@microchip.com>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <e877ca40-8e84-ed05-f455-369ca43a179d@cumulusnetworks.com>
Date: Tue, 14 Jul 2020 16:14:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200714073458.1939574-4-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v4 03/12] bridge: mrp: Extend bridge
	interface
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

On 14/07/2020 10:34, Horatiu Vultur wrote:
> This patch adds a new flag(BR_MRP_LOST_IN_CONT) to the net bridge
> ports. This bit will be set when the port lost the continuity of
> MRP_InTest frames.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/linux/if_bridge.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/linux/if_bridge.h b/include/linux/if_bridge.h
> index b3a8d3054af0f..6479a38e52fa9 100644
> --- a/include/linux/if_bridge.h
> +++ b/include/linux/if_bridge.h
> @@ -49,6 +49,7 @@ struct br_ip_list {
>  #define BR_ISOLATED		BIT(16)
>  #define BR_MRP_AWARE		BIT(17)
>  #define BR_MRP_LOST_CONT	BIT(18)
> +#define BR_MRP_LOST_IN_CONT	BIT(19)
>  
>  #define BR_DEFAULT_AGEING_TIME	(300 * HZ)
>  
> 

Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>


