Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0B61BA047
	for <lists.bridge@lfdr.de>; Mon, 27 Apr 2020 11:46:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 089568634E;
	Mon, 27 Apr 2020 09:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pqqvRAlN8yop; Mon, 27 Apr 2020 09:46:56 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id C9A228630A;
	Mon, 27 Apr 2020 09:46:56 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AA4E7C0172;
	Mon, 27 Apr 2020 09:46:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0D0F3C0172
 for <bridge@lists.linux-foundation.org>; Mon, 27 Apr 2020 09:46:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 037928634E
 for <bridge@lists.linux-foundation.org>; Mon, 27 Apr 2020 09:46:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CvAdd2+J-QKY for <bridge@lists.linux-foundation.org>;
 Mon, 27 Apr 2020 09:46:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8F0678630A
 for <bridge@lists.linux-foundation.org>; Mon, 27 Apr 2020 09:46:54 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id h4so3291402ljg.12
 for <bridge@lists.linux-foundation.org>; Mon, 27 Apr 2020 02:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=UiB8Sz4YfAvbHdDR7SWAyV+bAGQjoJnQnsYXO+tF1Jw=;
 b=P/lpHRdZrhWFk5hitl3BMEiBmG5w4opF0Oalc7Vj/JoILMg5y36ElUeI+8OqWPcNzr
 YghOBqFT5ur+fYkEaQP1DXOdxTjngMaA6419pL6Wo8lYNLTZ/Q1+lF20AKOJHiG6E5r6
 zs44vu2HOocwuzkTfmPJMGGoYFkG5TIGY8zGtoOoboq0uxJnQ5ivErKgaCD+EBfQ8hck
 ep5kHSOtNdPFTS8mI1crRmYKZ8zFxpL+hk51g4gnMMNrmYjI9TtYVcSodtRa2/bJlUtL
 wAkkoDHecXlBGiqiOuiHjlOXNxx/FvMzbAirJDyJhkyH6h5Ay0rzua9icwCF7VuqFAPE
 ioOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UiB8Sz4YfAvbHdDR7SWAyV+bAGQjoJnQnsYXO+tF1Jw=;
 b=sAts4V+fRMv61GUUukyoKbSc42hwQ3pNfvrfvmLnhFMDw1xFjHKkCENB/krXNpZhSj
 wu1l/0qrQZ6yhVtetEk71DAwz0U8pb60GOC3Nnm5z5Bbpa3jFmUvPBTw5oZ8U3Xs6NGf
 hXXm7QYBtlUFXDO2oC3WPvYdC0pj6CXbfyi7DVwDkCNidORfSysIv5mP3GBYWF7e5Zuc
 VNie2WikhogMjU9r7Q8WK4tC/5JIttQ2Qsj1tgKiLu3qET4S74sbaHVapthC3RBV7Dm0
 y8Wqutw7khsbecVwXzoVEz0M727Be9kE10PEewroXYxX6FL6rUbKMQ7asxzU2S4ATlHJ
 UVPQ==
X-Gm-Message-State: AGi0PuZ2M+vTptAR+9ERTfQ9D8N5hjtsv5JIXSSr3MbuQquolaABup5l
 wTZcunTzu7CSmMFM1AdxvnNxKjW9p1Q=
X-Google-Smtp-Source: APiQypKroMeYJY/wQUfBYPTmpEXq29J4Z1z4LHIzXUP4q2GwmDpeJ5RcHUo8V2suYyqKrVSqw83gSA==
X-Received: by 2002:a2e:9c09:: with SMTP id s9mr14002613lji.169.1587980812467; 
 Mon, 27 Apr 2020 02:46:52 -0700 (PDT)
Received: from ?IPv6:2a00:1fa0:468e:1152:9c79:cdeb:725:5fa4?
 ([2a00:1fa0:468e:1152:9c79:cdeb:725:5fa4])
 by smtp.gmail.com with ESMTPSA id r9sm8794099ljh.36.2020.04.27.02.46.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 02:46:51 -0700 (PDT)
To: Horatiu Vultur <horatiu.vultur@microchip.com>,
 nikolay@cumulusnetworks.com, davem@davemloft.net, jiri@resnulli.us,
 ivecera@redhat.com, kuba@kernel.org, roopa@cumulusnetworks.com,
 olteanv@gmail.com, andrew@lunn.ch, UNGLinuxDriver@microchip.com,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20200426132208.3232-1-horatiu.vultur@microchip.com>
 <20200426132208.3232-3-horatiu.vultur@microchip.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <ea7b30af-57b7-4cad-b73a-a13cf762c742@cogentembedded.com>
Date: Mon, 27 Apr 2020 12:46:47 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200426132208.3232-3-horatiu.vultur@microchip.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v4 02/11] bridge: mrp: Update Kconfig
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

Hello!

On 26.04.2020 16:21, Horatiu Vultur wrote:

> Add the option BRIDGE_MRP to allow to build in or not MRP support.
> The default value is N.
> 
> Reviewed-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>   net/bridge/Kconfig | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/net/bridge/Kconfig b/net/bridge/Kconfig
> index e4fb050e2078..51a6414145d2 100644
> --- a/net/bridge/Kconfig
> +++ b/net/bridge/Kconfig
> @@ -61,3 +61,15 @@ config BRIDGE_VLAN_FILTERING
>   	  Say N to exclude this support and reduce the binary size.
>   
>   	  If unsure, say Y.
> +
> +config BRIDGE_MRP
> +	bool "MRP protocol"
> +	depends on BRIDGE
> +	default n

    Not needed, N is the default default. :-)

[...]

MBR, Sergei
